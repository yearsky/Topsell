<?php
class Superuser extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		// check kredential
		$this->middleware->auth();

		// Print (array) Hak Akses Admin
		$this->data['privileges'] 			= $this->middleware->printAccess();

		$this->data['config'] 				= ConfigModel::find(1);

		$this->data['authmain'] 			= AuthModel::find($this->session->userdata('auth_id'));
		$this->data['notif_inbox'] 			= InboxModel::notReaded()->desc()->get();
		$this->data['notif_pricelist'] 		= PricelistModel::notReaded()->desc()->get();

		$this->data['notif_total'] 			= count($this->data['notif_inbox']) + count($this->data['notif_pricelist']);

		$this->blade->sebarno('ctrl', $this);
	}

	public function index($page="index")
	{
		$data 						= $this->data;


		$data['menu']				= "dashboard";
		echo $this->blade->nggambar('admin.dashboard',$data);
	}	

// --------------------------------- START 	BLOG
	public function blog($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('blog',true);

		$data['menu']				= "blog";
		$data['category']			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['blog']				= BlogModel::with('category')->desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.blog.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['category']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$blog 				= new BlogModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'BLOG__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/blog','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$blog->image= $upload['msg']['file_name'];
			}
			

			$blog->name				= $this->input->post('name');
			$blog->description		= $this->input->post('description');
			$blog->status 			= (null !==$this->input->post('status') ? 0 : 1);

			$category 				= CategoryBlogModel::find($this->input->post('category'));

			if(!isset($category->id)){
				echo goResult(false,"Opps! Kategori Tidak Di Temukan");
			}
			$blog->id_category		= $category->id;

			if($blog->save()){
				$tag 			= $this->input->post('tag');
				if($tag){
					$tag 		= TagModel::whereIn('id',$tag)->desc()->get();
					foreach ($tag as $result) {
						$insertTag 				= new TagBlogModel;
						$insertTag->id_blog		= $blog->id;
						$insertTag->id_tag 		= $result->id;
						$insertTag->save();
					}
				}

				echo goResult(true,"Sukses! , Blog Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['blog'] 			= BlogModel::with('category','tags')->find($id);

			$data['blogtag'] 		= [];

			foreach ($data['blog']->tags as $result) {
				array_push($data['blogtag'], $result->id_tag);
			}

			$data['type']			= "update";

			if(!isset($data['blog']->id)){
				redirect('superuser/blog');
				return;
			}

			echo $this->blade->nggambar('admin.blog.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$blog 					= BlogModel::find($id);

			if(!isset($blog->id)){
				echo goResult(false,"Opss! Blog Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['category']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'BLOG__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/blog/','image',$filename);

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/blog/'.$blog->image);}

				$blog->image = $upload['msg']['file_name'];
			}

			$blog->name				= $this->input->post('name');
			$blog->description		= $this->input->post('description');
			$blog->status 			= (null !==$this->input->post('status') ? 0 : 1);

			$category 				= CategoryBlogModel::find($this->input->post('category'));
			if(!isset($category->id)){
				echo goResult(false,"Opps! Kategori Tidak Di Temukan");
			}

			$blog->id_category		= $category->id;

			if($blog->save()){

				$tag 			= $this->input->post('tag');

				if($tag){

					TagBlogModel::where('id_blog',$blog->id)->delete();

					$tag 		= TagModel::whereIn('id',$tag)->desc()->get();
					foreach ($tag as $result) {
						$insertTag 				= new TagBlogModel;
						$insertTag->id_blog		= $blog->id;
						$insertTag->id_tag 		= $result->id;
						$insertTag->save();
					}
				}

				echo goResult(true,"Blog Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$blog 			= BlogModel::find($id);

			if(!isset($blog->id)){
				redirect('superuser/blog');
				return;
			}

			TagBlogModel::where('id_blog',$blog->id)->delete();

			if($blog->image!=""){
				if(file_exists("images/blog/{$blog->image}")){
					remFile(__DIR__.'/../../public/images/blog/'.$blog->image);
				}
			}
			
			$blog->delete();

			redirect('superuser/blog');
		}
		else {
			echo $this->blade->nggambar('admin.blog.index',$data);	
			return;
		}
	}
// --------------------------------- END BLOG

// --------------------------------- START BLOG KATEGORI 
	public function categoryblog($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "blog";
		$data['category']			= CategoryBlogModel::with('blog')->desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.categoryblog.content',$data);	
			return;

		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$category 				= new CategoryBlogModel;

			$category->name 		= $this->input->post('name');
			$category->description 	= $this->input->post('description');

			if($category->save()){
				echo goResult(true,"Kategori Blog Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="update" && $id!=null){

			$data['category'] 		= CategoryBlogModel::find($id);
			$data['type']			= "update";

			if(!isset($data['category']->id)){
				redirect('superuser/categoryblog');
				return;
			}
			echo $this->blade->nggambar('admin.categoryblog.content',$data);	
			return;

		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$category 					= CategoryBlogModel::find($id);

			if(!isset($category->id)){
				echo goResult(false,"Opss! Kategori Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];


			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$category->name 		= $this->input->post('name');
			$category->description 	= $this->input->post('description');

			if($category->save()){
				echo goResult(true,"Kategori Telah Di Perbarui");
				return;
			}

		}
		else if ($url=="delete" && $id != null){

			$category 				= CategoryBlogModel::find($id);
			if(!isset($category->id)){
				redirect('superuser/categoryblog');
				return;
			}

			$blog 					= BlogModel::where('id_category',$category->id)->desc()->get();

			foreach ($blog as $result) {

				TagBlogModel::where('id_blog',$result->id)->delete();
				SliderModel::where('id_blog',$result->id)->delete();

				if($result->image!=""){
					if(file_exists("images/blog/{$result->image}")){
						remFile(__DIR__.'/../../public/images/blog/'.$result->image);
					}
				}
			}

			BlogModel::where('id_category',$category->id)->delete();

			$category->delete();
			redirect('superuser/categoryblog');
		}
		else {
			echo $this->blade->nggambar('admin.categoryblog.index',$data);	
			return;
		}
	}
// --------------------------------- END BLOG KATEGORI

// --------------------------------- START BLOG TAG
	public function tag($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "blog";
		$data['tag']				= TagModel::desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.tag.content',$data);	
			return;

		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$tag 				= new TagModel;

			$tag->name 			= $this->input->post('name');
			$tag->description 	= $this->input->post('description');

			if($tag->save()){
				echo goResult(true,"Tag Blog Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="update" && $id!=null){

			$data['tag'] 		= TagModel::find($id);
			$data['type']		= "update";

			if(!isset($data['tag']->id)){
				redirect('superuser/tag');
				return;
			}
			echo $this->blade->nggambar('admin.tag.content',$data);	
			return;

		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$tag 					= TagModel::find($id);

			if(!isset($tag->id)){
				echo goResult(false,"Opss! Tag Blog Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];


			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$tag->name 			= $this->input->post('name');
			$tag->description 	= $this->input->post('description');

			if($tag->save()){
				echo goResult(true,"Tag Blog Telah Di Perbarui");
				return;
			}

		}
		else if ($url=="delete" && $id != null){

			$tag 				= TagModel::find($id);
			if(!isset($tag->id)){
				redirect('superuser/tag');
				return;
			}

			TagBlogModel::where('id_tag',$tag->id)->delete();
			$tag->delete();

			redirect('superuser/tag');
		}
		else {
			echo $this->blade->nggambar('admin.tag.index',$data);	
			return;
		}
	}
// --------------------------------- END BLOG TAG

// --------------------------------- START 	SERVICE
	public function service($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('service',true);

		$data['menu']				= "service";
		$data['service']				= ServiceModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.service.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['description_sort']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$service 				= new ServiceModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'SERVICE__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/service','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$service->image= $upload['msg']['file_name'];
			}
			

			$service->name				= $this->input->post('name');
			$service->description		= $this->input->post('description');
			$service->description_sort	= $this->input->post('description_sort');
			$service->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($service->save()){
				echo goResult(true,"Sukses! , Service Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['service'] 			= ServiceModel::find($id);

			$data['type']			= "update";

			if(!isset($data['service']->id)){
				redirect('superuser/service');
				return;
			}

			echo $this->blade->nggambar('admin.service.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$service 					= ServiceModel::find($id);

			if(!isset($service->id)){
				echo goResult(false,"Opss! Service Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['description_sort']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'SERVICE__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/service/','image',$filename);

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/service/'.$service->image);}

				$service->image = $upload['msg']['file_name'];
			}

			$service->name				= $this->input->post('name');
			$service->description		= $this->input->post('description');
			$service->description_sort	= $this->input->post('description_sort');
			$service->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($service->save()){
			
				echo goResult(true,"Service Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$service 			= ServiceModel::find($id);

			if(!isset($service->id)){
				redirect('superuser/service');
				return;
			}

			if($service->image!=""){
				if(file_exists("images/service/{$service->image}")){
					remFile(__DIR__.'/../../public/images/service/'.$service->image);
				}
			}
			
			$service->delete();

			redirect('superuser/service');
		}
		else {
			echo $this->blade->nggambar('admin.service.index',$data);	
			return;
		}
	}
// --------------------------------- END SERVICE

// --------------------------------- JOB POSITION
	public function job($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('job',true);

		$data['menu']				= "job";
		$data['job']					= JobModel::asc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.job.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$job 				= new JobModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'JOB__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/job','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$job->image= $upload['msg']['file_name'];
			}
			

			$job->judul								= $this->input->post('name');
			$job->deskripsi						= $this->input->post('description');

			if($job->save()){
				echo goResult(true,"Sukses! , Job Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['job'] 			= JobModel::find($id);

			$data['type']			= "update";

			if(!isset($data['job']->id)){
				redirect('superuser/job');
				return;
			}

			echo $this->blade->nggambar('admin.job.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$job 					= JobModel::find($id);

			if(!isset($job->id)){
				echo goResult(false,"Opss! Job Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'JOB__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/job/','image',$filename);

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/job/'.$job->image);}

				$job->image = $upload['msg']['file_name'];
			}

			$job->judul								= $this->input->post('name');
			$job->deskripsi						= $this->input->post('description');

			if($job->save()){
			
				echo goResult(true,"Job Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$job 			= JobModel::find($id);

			if(!isset($job->id)){
				redirect('superuser/job');
				return;
			}

			if($job->image!=""){
				if(file_exists("images/job/{$job->image}")){
					remFile(__DIR__.'/../../public/images/job/'.$job->image);
				}
			}
			
			$job->delete();

			redirect('superuser/job');
		}
		else {
			echo $this->blade->nggambar('admin.job.index',$data);	
			return;
		}
	}
// --------------------------------- END JOB POSITION

// --------------------------------- START 	EVENTPROMO
	public function event($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('event',true);

		$data['menu']			= "event";
		$data['event']			= EventPromoModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.event.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['type']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$event 				= new EventPromoModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'EVENTPROMO__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/event','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$event->image= $upload['msg']['file_name'];
			}
			

			$event->name			= $this->input->post('name');
			$event->description		= $this->input->post('description');
			$event->type			= $this->input->post('type');
			$event->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($event->save()){
				echo goResult(true,"Sukses! , Event Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['event'] 			= EventPromoModel::find($id);

			$data['type']			= "update";

			if(!isset($data['event']->id)){
				redirect('superuser/event');
				return;
			}

			echo $this->blade->nggambar('admin.event.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$event 					= EventPromoModel::find($id);

			if(!isset($event->id)){
				echo goResult(false,"Opss! Event Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['type']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'EVENT__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/event/','image',$filename);

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/event/'.$event->image);}

				$event->image = $upload['msg']['file_name'];
			}

			$event->name				= $this->input->post('name');
			$event->description		= $this->input->post('description');
			$event->type				= $this->input->post('type');
			$event->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($event->save()){
			
				echo goResult(true,"Event atau Promo Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$event 			= EventPromoModel::find($id);

			if(!isset($event->id)){
				redirect('superuser/event');
				return;
			}

			if($event->image!=""){
				if(file_exists("images/event/{$event->image}")){
					remFile(__DIR__.'/../../public/images/event/'.$event->image);
				}
			}
			
			$event->delete();

			redirect('superuser/event');
		}
		else {
			echo $this->blade->nggambar('admin.event.index',$data);	
			return;
		}
	}
// --------------------------------- END EVENTPROMO

// --------------------------------- START 	TESTIMONI_html
	public function testimoni($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('testimoni',true);

		$data['menu']				= "testimoni";
		$data['testimoni']			= TestimoniModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.testimoni.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$testimoni 				= new TestimoniModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'TESTIMONI__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/testimoni','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$testimoni->image= $upload['msg']['file_name'];
			}
			

			$testimoni->name			= $this->input->post('name');
			$testimoni->description		= $this->input->post('description');
			$testimoni->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($testimoni->save()){
				echo goResult(true,"Sukses! , Testimoni Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['testimoni'] 			= TestimoniModel::find($id);

			$data['type']			= "update";

			if(!isset($data['testimoni']->id)){
				redirect('superuser/testimoni');
				return;
			}

			echo $this->blade->nggambar('admin.testimoni.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$testimoni 					= TestimoniModel::find($id);

			if(!isset($testimoni->id)){
				echo goResult(false,"Opss! Testimoni Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'TESTIMONI__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/testimoni/','image',$filename);

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/testimoni/'.$testimoni->image);}

				$testimoni->image = $upload['msg']['file_name'];
			}

			$testimoni->name			= $this->input->post('name');
			$testimoni->description		= $this->input->post('description');
			$testimoni->status 			= (null !==$this->input->post('status') ? 0 : 1);

			if($testimoni->save()){
			
				echo goResult(true,"Testimoni Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$testimoni 			= TestimoniModel::find($id);

			if(!isset($testimoni->id)){
				redirect('superuser/testimoni');
				return;
			}

			if($testimoni->image!=""){
				if(file_exists("images/testimoni/{$testimoni->image}")){
					remFile(__DIR__.'/../../public/images/testimoni/'.$testimoni->image);
				}
			}
			
			$testimoni->delete();

			redirect('superuser/testimoni');
		}
		else {
			echo $this->blade->nggambar('admin.testimoni.index',$data);	
			return;
		}
	}
// --------------------------------- END TESTIMONI

// --------------------------------- START PRICELIST
	public function pricelist($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('pricelist',true);

		$data['menu']				= "pricelist";
		$data['pricelist']			= PricelistModel::orderBy('readed','desc')->desc()->get();

		PricelistModel::where('readed', 0)->update(['readed'=>'1']);

		if ($url=="detail" && $id!=null){

			$data['pricelist'] 			= PricelistModel::find($id);

			if(!isset($data['pricelist']->id)){
				redirect('superuser/pricelist');
				return;
			}

			$data['pricelist']->readed 	= 1;
			$data['pricelist']->save();

			echo $this->blade->nggambar('admin.pricelist.content',$data);	
			return;
		}
		else if ($url=="action" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['action'],['data']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$action 	= $this->input->post('action');

			switch ($action) {
				case 'delete':
					PricelistModel::whereIn('id',$this->input->post('data'))->delete();

					echo goResult(true,'Deleted!');
					break;
				case 'message':
					

					$rules 		= [
								    'required' 	=> [
								        ['title']
								    ]
								  ];

					$validate 	= Validation::check($rules,'post');

					if(!$validate->auth){
						echo goResult(false,$validate->msg);
						return;
					}

					$pricelist 			= PricelistModel::whereIn('id',$this->input->post('data'))->get();

					if($pricelist){

						$mail 					= new Magicmailer;
						$email 					= $this->data;

						foreach ($pricelist as $result) {
							$mail->addAddress($result->email,$result->name);
						}
						
					    $mail->Body    			= $this->blade->nggambar('email.member.message',$email);	
					    $mail->Subject 			= $this->input->post('title');
				    	$mail->AltBody 			= 'Anda Mendapatkan Pesan Dari - '.$data['config']->name;
						if($mail->send()){
							echo goResult(true,'Pesan Terkirim !');
							return;
						}
					}

					return;
					break;
				default:
					echo goResult(false,"uknown action");
					break;
			}
		}
		else if ($url=="submitfile" && $this->input->is_ajax_request()){

			$config 			= $this->data['config'];

			if (!empty($_FILES['pricelist']['name']) && $this->isDocument('pricelist')==true) {

				$filename 	= 'PRICELIST__'.seo($config->name).'__'.date('Ymdhis').'__'.getToken(12);

				$upload 	= $this->upload_materi('document','pricelist','pricelist',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				if($config->file_pricelist!=""){
					remFile(__DIR__.'/../../public/pricelist/'.$config->file_pricelist);
				}

			
				$config->file_pricelist = $upload['msg']['file_name'];
				$config->save();

				echo goResult(true,"File Price List Di Perbarui");
				return;

			}

			echo goResult(false,"File Tidak Ada / Bukan Dokumen");
			return;
			

		}
		else if ($url=="delete" && $id != null){

			$pricelist 			= PricelistModel::find($id);

			if(!isset($pricelist->id)){
				redirect('superuser/pricelist');
				return;
			}

			$pricelist->delete();
			redirect('superuser/pricelist');

		}
		else {
			echo $this->blade->nggambar('admin.pricelist.index',$data);	
			return;
		}
	}
// --------------------------------- END PRICELIST

// --------------------------------- START GALLERY
	public function gallery($url=null,$id=null){

		$data 						= $this->data;
		$data['menu']				= "gallery";
		$data['gallery']			= GalleryModel::desc()->get();

		if($url=="create"){

			$data['type']			= "create";
			echo $this->blade->nggambar('admin.gallery.content',$data);	
			return;

		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){


			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];


			
			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$gallery 				= new GalleryModel;

			$gallery->name			= $this->input->post('name');
			$gallery->description 	= $this->input->post('description');

			if(null !== $this->input->post('type')){

				if (empty($_FILES['image']['name']) || $this->isImage('image')==false) {
					echo goResult(false,"Opps! Gambar Tidak Sesuai Format Atau Tidak Ada");
					return;
				}

				$filename 	= 'GALLERY__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/gallery/','image',$filename);	

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$gallery->image		= $upload['msg']['file_name'];	
				$gallery->type 		= 'image';
			}
			else {

				$rules 		= [
							    'required' 	=> [
								       				['video']
							    				]
							  ];

				$validate 	= Validation::check($rules,'post');

				if(!$validate->auth){
					echo goResult(false,$validate->msg);
					return;
				}

				$gallery->video 	= $this->input->post('video');
				$gallery->type 		= "video";
			}

			if($gallery->save()){
				echo goResult(true,"Gallery Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="update" && $id!=null){

			$data['gallery'] 			= GalleryModel::find($id);
			$data['type']				= "update";

			if(!isset($data['gallery']->id)){
				redirect('superuser/gallery');
				return;
			}
			echo $this->blade->nggambar('admin.gallery.content',$data);	
			return;

		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$gallery 	= GalleryModel::find($id);

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description']
						    ]
						  ];


			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}


			if(!isset($gallery->id)){
				echo goResult(false,"Opss! Gallery Tidak Di Temukan");
				return;
			}

			if(null !== $this->input->post('type')){

				if (!empty($_FILES['image']['name'])) {

					if($this->isImage('image')==false){
						echo goResult(false,"Opps! Gambar Tidak Sesuai Format");	
						return;
					}

					$filename 	= 'GALLERY__'.seo($this->input->post('name')).'__'.date('Ymdhis');

					$upload 			= $this->upload('images/gallery/','image',$filename);	

					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}

					if($gallery->type=="image"){
						if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/gallery/'.$gallery->image);}
					}					

					$gallery->image		= $upload['msg']['file_name'];
				}

				$gallery->type 		= "image";
				$gallery->video 	= null;
			}
			else{

				if($gallery->type=="image"){
					remFile(__DIR__.'/../../public/images/gallery/'.$gallery->image);
				}

				$rules 		= [
							    'required' 	=> [
							        ['video']
							    ]
							  ];

				$validate 	= Validation::check($rules,'post');

				if(!$validate->auth){
					echo goResult(false,$validate->msg);
					return;
				}

				$gallery->image 	= null;
				$gallery->video 	= $this->input->post('video');
				$gallery->type 		= "video";
			}

			
			$gallery->name			= $this->input->post('name');
			$gallery->description 	= $this->input->post('description');


			if($gallery->save()){
				echo goResult(true,"Gallery Telah Di Perbarui");
				return;
			}


		}
		else if ($url=="delete" && $id != null){

			$gallery 				= GalleryModel::find($id);

			if(!isset($gallery->id)){
				redirect('superuser/gallery');
				return;
			}

			if($gallery->type=="image"){
				if(file_exists("images/gallery/{$gallery->image}")){
					remFile(__DIR__.'/../../public/images/gallery/'.$gallery->image);
				}
			}
				
			
			$gallery->delete();

			redirect('superuser/gallery');
		}
		else {
			echo $this->blade->nggambar('admin.gallery.index',$data);	
			return;
		}
	}
// --------------------------------- END GALLERY

// --------------------------------- START SLIDER
	public function slider($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('slider',true);

		$data['menu']				= "slider";
		$data['slider']				= SliderModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.slider.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$slider 				= new SliderModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'SLIDER__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/slider','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$slider->image= $upload['msg']['file_name'];
			}
			

			$slider->name			= $this->input->post('name');
			$slider->url			= $this->input->post('url');
			$slider->status 		= (null !==$this->input->post('status') ? 0 : 1);

			if($slider->save()){
				echo goResult(true,"Slider Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['slider'] 		= SliderModel::find($id);

			$data['type']			= "update";

			if(!isset($data['slider']->id)){
				redirect('superuser/slider');
				return;
			}

			echo $this->blade->nggambar('admin.slider.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$slider 					= SliderModel::find($id);

			if(!isset($slider->id)){
				echo goResult(false,"Opss! Slider Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'SLIDER__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/slider','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if($slider->image!==""){
					remFile(__DIR__.'/../../public/images/slider/'.$slider->image);
				}						

				$slider->image= $upload['msg']['file_name'];
			}
			

			$slider->name			= $this->input->post('name');
			$slider->url			= $this->input->post('url');
			$slider->status 		= (null !==$this->input->post('status') ? 0 : 1);

			if($slider->save()){
				echo goResult(true,"Slider Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$slider 			= SliderModel::find($id);

			if(!isset($slider->id)){
				redirect('superuser/slider');
				return;
			}

			if($slider->image!=""){
				remFile(__DIR__.'/../../public/images/slider/'.$slider->image);
			}
			
			$slider->delete();

			redirect('superuser/slider');
		}
		else {
			echo $this->blade->nggambar('admin.slider.index',$data);	
			return;
		}
	}
// --------------------------------- END SLIDER

// --------------------------------- START PRODUCT
	public function product($url=null,$id=null,$rule=false){

		$this->middleware->access('product',true);

		$data 						= $this->data;
		$data['menu']				= "product";
		$data['category']			= CategoryProductModel::desc()->get();
		$data['product']			= ProductModel::with('category','images')->desc()->get();
		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.product.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['category']
						    ]
						  ];


			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$product 				= new ProductModel;

			foreach($_FILES['image']['name'] as $file){
				if (empty($file)) {
					echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai ");
					return;
				}
			}

			$product->name			= $this->input->post('name');
			$product->description	= $this->input->post('description');

			$product->price_false	= (int) str_replace('.', '',$this->input->post('price_false'));
			$product->price			= (int) str_replace('.', '',$this->input->post('price'));

			$product->status 		= (null !==$this->input->post('status') ? 0 : 1);

			$category 				= CategoryProductModel::find($this->input->post('category'));

			if(!isset($category->id)){
				echo goResult(false,"Opps! Kategori Tidak Di Temukan");
				return;
			}

			$product->id_category   = $category->id;

			if($product->save()){

				$filename 	= 'PRODUCT__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload_files(__DIR__.'/../../public/images/product',$_FILES['image'],$filename);
				if($upload['auth']	== false){
					$product->delete();
					foreach ($upload['msg'] as $key => $value) {
						remFile(__DIR__.'/../../public/images/product/'.$value['file_name']);
					}
					echo goResult(false,'Opss! Gambar Product Tidak Terupload');
					return;
				}

				foreach ($upload['msg'] as $key => $value) {
					$image 					= new ProductImagesModel;
					$image->id_product 		= $product->id;
					$image->image 			= $value['file_name'];
					$image->save();
				}

				$image 						= ProductImagesModel::where('id_product',$product->id)->first();

				if($image){
					$product->image 		= $image->image;
					$product->save();
				}

				echo goResult(true,"Sukses! , Produk Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['product'] 		= ProductModel::with('category','images')->find($id);
			$data['type']			= "update";

			if(!isset($data['product']->id)){
				redirect('superuser/product');
				return;
			}

			echo $this->blade->nggambar('admin.product.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$product 				= ProductModel::with('images')->find($id);

			if(!isset($product->id)){
				echo goResult(false,"Opss! Produk Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['description'],['available_image'],
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$product->name			= $this->input->post('name');
			$product->description	= $this->input->post('description');

			$product->price_false	= (int) str_replace('.', '',$this->input->post('price_false'));
			$product->price			= (int) str_replace('.', '',$this->input->post('price'));

			$product->status 		= (null !==$this->input->post('status') ? 0 : 1);

			$category 				= CategoryProductModel::find($this->input->post('category'));
			if(!isset($category->id)){
				echo goResult(false,"Opps! Kategori Tidak Di Temukan");
				return;
			}

			$product->id_category	= $category->id;

			foreach ($product->images as $result) {

				if(!$this->input->post('available_'.$result->id)){

					ProductImagesModel::where('id',$result->id)->delete();
					remFile(__DIR__.'/../../public/images/product/'.$result->image);

				}
				else if (!empty($_FILES['image_'.$result->id]['name']) && $this->isImage('image_'.$result->id)==true) {

					$filename 	= 'PRODUCT__'.seo($this->input->post('name')).'__'.date('Ymdhis');
					$upload 	= $this->upload('images/product/','image_'.$result->id,$filename);

					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}

					remFile(__DIR__.'/../../public/images/product/'.$result->image);
					ProductImagesModel::where('id',$result->id)->update([ 'image' => $upload['msg']['file_name'] ]);
				}

			}

			if($product->save()){

				if(isset($_FILES['image'])){
					$filename 	= 'PRODUCT__'.seo($this->input->post('name')).'__'.date('Ymdhis');

					$upload 	= $this->upload_files(__DIR__.'/../../public/images/product',$_FILES['image'],$filename);
					if($upload['auth']	== false){
						$product->delete();
						foreach ($upload['msg'] as $key => $value) {
							remFile(__DIR__.'/../../public/images/product/'.$value['file_name']);
						}
						echo goResult(false,'Opss! Gambar Product Tidak Terupload');
						return;
					}

					foreach ($upload['msg'] as $key => $value) {
						$image 					= new ProductImagesModel;
						$image->id_product 		= $product->id;
						$image->image 			= $value['file_name'];
						$image->save();
					}
				}
				
				$image 						= ProductImagesModel::where('id_product',$product->id)->first();

				if($image){
					$product->image 		= $image->image;
					$product->save();
				}

				echo goResult(true,"Produk Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){
			$product 			= ProductModel::find($id);
			if(!isset($product->id)){
				redirect('superuser/product');
				return;
			}

			$imageproduct 			= ProductImagesModel::where('id_product', $product->id)->get();
			foreach ($imageproduct as $key => $result) {
				if(file_exists("images/product/{$result->image}")){
					remFile(__DIR__.'/../../public/images/product/'.$result->image);
				}
			}


			ProductImagesModel::where('id_product', $product->id)->delete();

			$product->delete();

			if($rule){
				return;
			}

			redirect('superuser/product');
		}
		else {
			echo $this->blade->nggambar('admin.product.index',$data);	
			return;
		}
	}
// --------------------------------- EEND PRODUCT

// --------------------------------- START CATEGORY PRODUCT 
	public function categoryproduct($url=null,$id=null){

		$this->middleware->access('product',true);

		$data 						= $this->data;
		$data['menu']				= "product";
		$data['category']			= CategoryProductModel::with('product')->desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.categoryproduct.content',$data);	
			return;

		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$category 				= new CategoryProductModel;

			$category->name 		= $this->input->post('name');
			$category->description 	= $this->input->post('description');

			if($category->save()){
				echo goResult(true,"Kategori Produk Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="update" && $id!=null){

			$data['category'] 		= CategoryProductModel::find($id);
			$data['type']			= "update";

			if(!isset($data['category']->id)){
				redirect('superuser/categoryproduct');
				return;
			}
			echo $this->blade->nggambar('admin.categoryproduct.content',$data);	
			return;

		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$category 					= CategoryProductModel::find($id);

			if(!isset($category->id)){
				echo goResult(false,"Opss! Kategori Produk Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['name'],['description']
					    ]
					  ];


			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$category->name 		= $this->input->post('name');
			$category->description 	= $this->input->post('description');

			if($category->save()){
				echo goResult(true,"Kategori Produk Telah Di Perbarui");
				return;
			}

		}
		else if ($url=="delete" && $id != null){

			$category 				= CategoryProductModel::find($id);
			if(!isset($category->id)){
				redirect('superuser/categoryproduct');
				return;
			}

			foreach ($category->product as $result) {
				$this->product('delete',$result->id,true);
			}

			$category->delete();
			redirect('superuser/categoryproduct');
		}
		else {
			echo $this->blade->nggambar('admin.categoryproduct.index',$data);	
			return;
		}
	}
// --------------------------------- END CATEGORY PRODUCT

// --------------------------------- START INBOX
	public function inbox($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('inbox',true);

		$data['menu']				= "inbox";
		$data['inbox']				= InboxModel::orderBy('readed','desc')->desc()->get();

		if ($url=="detail" && $id!=null){

			$data['inbox'] 			= InboxModel::find($id);

			if(!isset($data['inbox']->id)){
				redirect('superuser/inbox');
				return;
			}

			$data['inbox']->readed 	= 1;
			$data['inbox']->save();

			echo $this->blade->nggambar('admin.inbox.content',$data);	
			return;
		}
		else if ($url=="action" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['action'],['data']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$action 	= $this->input->post('action');

			switch ($action) {
				case 'delete':
					InboxModel::whereIn('id',$this->input->post('data'))->delete();
					echo goResult(true,'Deleted!');
					break;
				case 'respond':
					InboxModel::whereIn('id',$this->input->post('data'))->update(['respond'=>1,'readed'=>1]);
					echo goResult(true,"Telah Di Tandai");
					break;
				case 'message':
					

					$rules 		= [
								    'required' 	=> [
								        ['title']
								    ]
								  ];

					$validate 	= Validation::check($rules,'post');

					if(!$validate->auth){
						echo goResult(false,$validate->msg);
						return;
					}

					$inbox 			= InboxModel::whereIn('id',$this->input->post('data'))->get();

					if($inbox){

						$mail 					= new Magicmailer;
						$email 					= $this->data;

						foreach ($inbox as $result) {
							$mail->addAddress($result->email,$result->name);
						}
						
					    $mail->Body    			= $this->blade->nggambar('email.member.message',$email);	
					    $mail->Subject 			= $this->input->post('title');
				    	$mail->AltBody 			= 'Anda Mendapatkan Pesan Dari - '.$data['config']->name;
						if($mail->send()){
							InboxModel::whereIn('id',$this->input->post('data'))->update(['respond'=>1,'readed'=>1]);
							echo goResult(true,'Pesan Terkirim !');
							return;
						}
					}

					return;
					break;
				default:
					echo goResult(false,"uknown action");
					break;
			}
		}
		else if ($url=="delete" && $id != null){

			$inbox 			= InboxModel::find($id);

			if(!isset($inbox->id)){
				redirect('superuser/inbox');
				return;
			}

			$inbox->delete();
			redirect('superuser/inbox');

		}
		else {
			echo $this->blade->nggambar('admin.inbox.index',$data);	
			return;
		}
	}
// --------------------------------- END INBOX

// --------------------------------- START 	SOSMED
	public function sosmed($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('sosmed',true);

		$data['menu']				= "sosmed";
		$data['sosmed']				= SosmedModel::desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.sosmed.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['type'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$sosmed 				= new SosmedModel;

			$sosmed->name 			= $this->input->post('name');
			$sosmed->type 			= $this->input->post('type');
			$sosmed->url 			= $this->input->post('url');

			if($sosmed->save()){
				echo goResult(true,"Sukses! , Sosial Media Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['sosmed'] 		= SosmedModel::find($id);
			$data['type']			= "update";

			if(!isset($data['sosmed']->id)){
				redirect('superuser/sosmed');
				return;
			}

			echo $this->blade->nggambar('admin.sosmed.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$sosmed 				= SosmedModel::find($id);

			if(!isset($sosmed->id)){
				echo goResult(false,"Opps! Sosial Media Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['type'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$sosmed->name 			= $this->input->post('name');
			$sosmed->type 			= $this->input->post('type');
			$sosmed->url 			= $this->input->post('url');
		
			if($sosmed->save()){
				echo goResult(true,"Sosial Media Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$sosmed 				= SosmedModel::find($id);

			if(!isset($sosmed->id)){
				redirect('superuser/sosmed');
				return;
			}
			
			$sosmed->delete();
			redirect('superuser/sosmed');

		}
		else {
			echo $this->blade->nggambar('admin.sosmed.index',$data);	
			return;
		}
	}
// --------------------------------- END SOSMED

// --------------------------------- START SEO
	public function seo($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('seo',true);

		$data['menu']				= "seo";
		$data['seo']				= SeoModel::find(1);

		if ($url == "save" && $this->input->is_ajax_request() == true){

			$seo 					= SeoModel::find(1);

			if(!$seo){
				echo goResult(false,"Seo Content Not Found!");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['description'],['keyword'],['author'],['title']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'SEO__IMAGE__'.date('Ymdhis');

				$upload 	= $this->upload('images/website','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				if($seo->image!=""){
					if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/website/'.$seo->image);}
				}
				
				$seo->image= $upload['msg']['file_name'];
				
			}

			$seo->title 		= $this->input->post('title');
			$seo->author 		= $this->input->post('author');
			$seo->keyword 		= $this->input->post('keyword');
			$seo->description 	= $this->input->post('description');
			$seo->fbpixel 		= $this->input->post('fbpixel');
			$seo->analytic 		= $this->input->post('analytic');

			if($seo->save()){
				echo goResult(true,"Pengaturan SEO di Perbarui");
				return;
			}
		}
		else {
			echo $this->blade->nggambar('admin.seo.index',$data);	
			return;
		}
	}
// --------------------------------- END SEO

// --------------------------------- START 	halaman statis
	public function halamanstatis($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "halaman";
		$data['halamanstatis']		= HalamanModel::desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.halamanstatis.content',$data);
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['judul','deskripsi']
						    ]
						  ];

			$uploaded 	= false;

			if ($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Tidak Benar");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Sesuai ");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {
				$upload 	= $this->upload('images/halamanstatis','image');
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				$uploaded 	= true;
			}

			$halamanstatis 				= new HalamanModel;

			$halamanstatis->judul		= $this->input->post('judul');
			$halamanstatis->judul_seo	= seo($this->input->post('judul'));
			$halamanstatis->deskripsi	= $this->input->post('deskripsi');
			$halamanstatis->cover		= ($uploaded==true) ? $upload['msg']['file_name'] : '';

			if($halamanstatis->save()){
				echo goResult(true,"Sukses! , Halaman Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['halamanstatis'] 	= HalamanModel::find($id);
			$data['type']			= "update";

			if(!isset($data['halamanstatis']->id)){
				redirect('superuser/halamanstatis');
				return;
			}
			if($id==9){
				$data['pengurus'] = PengurusModel::all();
				echo $this->blade->nggambar('admin.halamanstatis.pengurus',$data);
			}
			else{
				echo $this->blade->nggambar('admin.halamanstatis.content',$data);
			}

			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$halamanstatis 				= HalamanModel::find($id);

			if(!isset($halamanstatis->id)){
				echo goResult(false,"Opss! Halaman Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['judul','deskripsi']
					    ]
					];

			if($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Belum Benar");
				return;
			}

			$uploaded 				= false;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$upload 	= $this->upload('images/halamanstatis/','image');

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				$uploaded 			= true;

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/halamanstatis/'.$halamanstatis->cover);}

			}

			$halamanstatis->judul		= $this->input->post('judul');
			$halamanstatis->judul_seo	= seo($this->input->post('judul'));
			$halamanstatis->deskripsi	= $this->input->post('deskripsi');
			$halamanstatis->cover 		= ($uploaded==true) ? $upload['msg']['file_name'] : $halamanstatis->cover ;

			if($halamanstatis->save()){
				echo goResult(true,"Halaman Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="deleted" && $id != null){

			$halamanstatis 			= HalamanModel::find($id);
			if(!isset($halamanstatis->id)){
				redirect('superuser/halamanstatis');
				return;
			}

			if($halamanstatis->cover!=""){
				if(file_exists("images/halamanstatis/{$halamanstatis->cover}")){
					remFile(__DIR__.'/../../public/images/halamanstatis/'.$halamanstatis->cover);
				}
			}

			if($halamanstatis->id != 9){
				$halamanstatis->delete();
			}

			redirect('superuser/halamanstatis');
		}
		else if($url=="addpengurus"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.halamanstatis.contentpengurus',$data);
			return;
		}
		else if($url == "createdpengurus" && $this->input->is_ajax_request() == true){
			$rules 		= [
						    'required' 	=> [
						        ['nama','jabatan']
						    ]
						  ];
			$uploaded 	= false;
			if ($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Tidak Benar");
				return;
			}
			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Sesuai ");
				return;
			}
			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {
				$upload 	= $this->upload('images/anggota','image');
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				$uploaded 	= true;
			}
			$pengurus = new PengurusModel;
			$pengurus->nama = $this->input->post('nama');
			$pengurus->jabatan = $this->input->post('jabatan');
			$pengurus->foto = ($uploaded==true) ? $upload['msg']['file_name'] : '';

			if($pengurus->save()){
				echo goResult(true,"Sukses! , Pengurus Baru Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="updatepengurus" && $id!=null){
			$data['pengurus'] 	= PengurusModel::find($id);
			$data['type']			= "update";
			echo $this->blade->nggambar('admin.halamanstatis.contentpengurus',$data);
			return;
		}
		else if ($url=="updatedpengurus" && $id!=null && $this->input->is_ajax_request() == true){
			$pengurus = PengurusModel::find($id);

			if(!isset($pengurus->id)){
				echo goResult(false,"Opss! Halaman Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['nama','jabatan']
					    ]
					];

			$uploaded = false;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$upload 	= $this->upload('images/anggota/','image');

				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				$uploaded 			= true;

				if(!empty($upload['msg']['file_name'])){remFile(__DIR__.'/../../public/images/anggota/'.$pengurus->foto);}

			}

			$pengurus->nama = $this->input->post('nama');
			$pengurus->jabatan = $this->input->post('jabatan');
			$pengurus->foto = ($uploaded==true) ? $upload['msg']['file_name'] : $pengurus->foto;

			if($pengurus->save()){
				echo goResult(true,"Data Pengurus Telah Di Perbarui");
				return;
			}

		}
		else if ($url=="deletedpengurus" && $id != null){
			$pengurus = PengurusModel::find($id);
			if(!isset($pengurus->id)){
				redirect('superuser/halamanstatis/update/9/susunan-pengurus');
				return;
			}
			if($pengurus->foto!=""){
				if(file_exists("images/anggota/{$pengurus->foto}")){
					remFile(__DIR__.'/../../public/images/anggota/'.$pengurus->foto);
				}
			}
			$pengurus->delete();
			redirect('superuser/halamanstatis/update/9/susunan-pengurus');
		}
		else {
			echo $this->blade->nggambar('admin.halamanstatis.index',$data);
			return;
		}
	}
// --------------------------------- END 	halaman statis

// --------------------------------- START
	public function menupengunjung($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "menupengunjung";
		$data['menupengunjung']			= MenupengunjungModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.menupengunjung.content',$data);
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['judul']
						    ]
						  ];

			$uploaded 	= false;

			if ($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Tidak Benar");
				return;
			}

			$menupengunjung 			= new MenupengunjungModel;

			$menupengunjung->judul		= $this->input->post('judul');
			$menupengunjung->link		= $this->input->post('link');
			$menupengunjung->urutan		= $this->input->post('urutan');
			$menupengunjung->aktif 		= (null !==$this->input->post('aktif') ? '0' : '1' );

			if($menupengunjung->save()){
				echo goResult(true,"Sukses! , Data Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['menupengunjung'] 	= MenupengunjungModel::find($id);
			$data['type']				= "update";

			if(!isset($data['menupengunjung']->id)){
				redirect('superuser/menupengunjung');
				return;
			}
			echo $this->blade->nggambar('admin.menupengunjung.content',$data);
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$menupengunjung 				= MenupengunjungModel::findorfail($id);

			if(!isset($menupengunjung->id)){
				echo goResult(false,"Opss! Data Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['judul']
					    ]
					];


			if($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Belum Benar");
				return;
			}

			$menupengunjung->judul		= $this->input->post('judul');
			$menupengunjung->link		= $this->input->post('link');
			$menupengunjung->urutan 	= $this->input->post('urutan');
			$menupengunjung->aktif 		= (null !==$this->input->post('aktif') ? '0' : '1');

			if($menupengunjung->save()){
				echo goResult(true,"Data Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="deleted" && $id != null){

			$menupengunjung 			= MenupengunjungModel::find($id);
			if(!isset($menupengunjung->id)){
				redirect('superuser/menupengunjung');
				return;
			}

			$menupengunjung->delete();

			redirect('superuser/menupengunjung');
		}
		else {
			echo $this->blade->nggambar('admin.menupengunjung.index',$data);
			return;
		}
	}
// --------------------------------- END

// --------------------------------- submenu
	public function submenupengunjung($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "submenupengunjung";
		$data['menupengunjungs']	= MenupengunjungModel::aktif()->asc()->get();
		$data['submenupengunjung']	= SubmenupengunjungModel::with('menupengunjung')->desc()->get();

		if($url=="create"){

			$data['type']			= "create";
			echo $this->blade->nggambar('admin.submenupengunjung.content',$data);
			return;

		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules = [
					    'required' 	=> [
					        ['judul']
					    ]
					  ];

			if ($this->validation($rules,'post')==false){
				echo goResult(false,"Opps! Form Tidak Benar");
				return;
			}

			$submenupengunjung 				= new SubmenupengunjungModel;

			$submenupengunjung->judul 		= $this->input->post('judul');
			// $submenupengunjung->id_menu 	= $this->input->post('menu');
			$submenupengunjung->link 		= $this->input->post('link');
			$submenupengunjung->urutan	 	= $this->input->post('urutan');
			$submenupengunjung->aktif 		= (null !==$this->input->post('aktif') ? '0' : '1' );

			$submenupengunjung->id_menu 	= 0;

			if($this->input->post('menu')){
				$menupengunjung		= MenupengunjungModel::find($this->input->post('menu'));

				if(!isset($menupengunjung->id)){
					echo goResult(false,"Opps! Menu Tidak Di Temukan");
				}
				$submenupengunjung->id_menu	= $menupengunjung->id;
			}

			if($submenupengunjung->save()){
				echo goResult(true,"Sub menu Pengunjung Telah Di Tambahkan");
				return;
			}

		}
		else if ($url=="update" && $id!=null){

			$data['submenupengunjung'] 		= SubmenupengunjungModel::find($id);
			$data['type']			= "update";
			if(!isset($data['submenupengunjung']->id)){
				redirect('superuser/submenupengunjung');
				return;
			}
			echo $this->blade->nggambar('admin.submenupengunjung.content',$data);
			return;

		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$submenupengunjung 				= SubmenupengunjungModel::find($id);

			if(!isset($submenupengunjung->id)){
				echo goResult(false,"Opss! Sub menu Pengunjung Tidak Di Temukan");
				return;
			}

			$rules = [
					    'required' 	=> [
					        ['judul']
					    ]
					  ];


			if($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Belum Benar");
				return;
			}

			$submenupengunjung->judul 		= $this->input->post('judul');
			// $submenupengunjung->id_menu 	= $this->input->post('menu');
			$submenupengunjung->link 		= $this->input->post('link');
			$submenupengunjung->urutan	 	= $this->input->post('urutan');
			$submenupengunjung->aktif 		= (null !==$this->input->post('aktif') ? '0' : '1');

			$submenupengunjung->id_menu 	= 0;

			if($this->input->post('menu')){
				$menupengunjung		= MenupengunjungModel::find($this->input->post('menu'));

				if(!isset($menupengunjung->id)){
					echo goResult(false,"Opps! Menu Tidak Di Temukan");
				}
				$submenupengunjung->id_menu	= $menupengunjung->id;
			}

			if($submenupengunjung->save()){
				echo goResult(true,"Sub menu Pengunjung Telah Di Perbarui");
				return;
			}

		}
		else if ($url=="deleted" && $id != null){

			$submenupengunjung 			= SubmenupengunjungModel::find($id);
			if(!isset($submenupengunjung->id)){
				redirect('superuser/submenupengunjung');
				return;
			}

			$submenupengunjung->delete();
			redirect('superuser/submenupengunjung');
		}
		else {
			echo $this->blade->nggambar('admin.submenupengunjung.index',$data);
			return;
		}
	}
// --------------------------------- End submenu
// --------------------------------- START PARTNERSHIP
	public function partnership($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('partnership',true);

		$data['menu']				= "partnership";
		$data['partner']			= PartnershipModel::desc()->get();


		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.partner.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$partner 				= new PartnershipModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==false) {
				echo goResult(false,"Opss! Gambar Tidak Ada Atau Tidak Sesuai");
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'PARNER__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/partner','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$partner->image= $upload['msg']['file_name'];
			}
			

			$partner->name			= $this->input->post('name');
			$partner->url			= $this->input->post('url');

			if($partner->save()){
				echo goResult(true,"Partner Baru Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['partner'] 		= PartnershipModel::find($id);

			$data['type']			= "update";

			if(!isset($data['partner']->id)){
				redirect('superuser/partnership');
				return;
			}

			echo $this->blade->nggambar('admin.partner.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$partner 					= PartnershipModel::find($id);

			if(!isset($partner->id)){
				echo goResult(false,"Opss! Partner Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['url']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'PARTNER__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/partner','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}

				if($partner->image!==""){
					remFile(__DIR__.'/../../public/images/partner/'.$partner->image);
				}						

				$partner->image= $upload['msg']['file_name'];
			}
			

			$partner->name			= $this->input->post('name');
			$partner->url			= $this->input->post('url');

			if($partner->save()){
				echo goResult(true,"Partner Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){

			$partner 			= PartnershipModel::find($id);

			if(!isset($partner->id)){
				redirect('superuser/partnership');
				return;
			}

			if($partner->image!=""){
				remFile(__DIR__.'/../../public/images/partner/'.$partner->image);
			}
			
			$partner->delete();

			redirect('superuser/partnership');
		}
		else {
			echo $this->blade->nggambar('admin.partner.index',$data);	
			return;
		}
	}
// --------------------------------- END PARTNERSHIP

	// --------------------------------- START project
	public function project($url=null,$id=null){
		$data 						= $this->data;
		$data['menu']				= "project";
		$data['project']			= ProjectModel::with('gallery')->desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.project.content',$data);	
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['title','description']
						    ]
						  ];

			$project 				= new ProjectModel;

			if ($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Tidak Benar");
				return;
			}

			foreach($_FILES['image']['name'] as $file){
				if (empty($file)) {
					echo goResult(false,"Opss! Gambar Tidak Ada atau Tidak Sesuai ");
					return;
				}
			}

			$project->title			= $this->input->post('title');
			$project->description	= $this->input->post('description');

			if($project->save()){
			$upload 	= $this->upload_files(__DIR__.'/../../public/images/project/',$_FILES['image']);
				if($upload['auth']	== false){
					$project->delete();
					foreach ($upload['msg'] as $key => $value) {
						remFile(__DIR__.'/../../public/images/project/'.$value['file_name']);
					}
					echo goResult(false,$upload['msg']);
					return;
				}

				foreach ($upload['msg'] as $key => $value) {
					$image 					= new ProjectimgModel;
					$image->id_project 		= $project->id;
					$image->image 			= $value['file_name'];
					$image->save();
				}

				echo goResult(true,"Sukses! , Project Baru Telah Di Buat");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['project'] 		= ProjectModel::with('gallery')->find($id);
			$data['type']			= "update";

			if(!isset($data['project']->id)){
				redirect('superuser/project');
				return;
			}
			echo $this->blade->nggambar('admin.project.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$project 				= ProjectModel::with('gallery')->find($id);

			if(!isset($project->id)){
				echo goResult(false,"Opss! Project Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['title','description']
						    ]
						  ];


			if($this->validation($rules,'post')==false){
				echo goResult(false,"Opss! Form Belum Benar");
				return;
			}
					
			$project->title			= $this->input->post('title');
			$project->description	= $this->input->post('description');
			$recentImage 			= ProjectimgModel::where('id_project',$project->id)->get();

			// Recent Image Update
			foreach ($recentImage as $result) {

				if(!$this->input->post('isimage-'.$result->id)){
					if(file_exists("images/project/{$result->image}")){
						remFile(__DIR__.'/../../public/images/project/'.$result->image);
					}

					ProjectimgModel::where('id', $result->id)->delete();
					continue;
				}

				if (!empty($_FILES['image-'.$result->id]['name']) && $this->isImage('image-'.$result->id)==true) {

					$upload 	= $this->upload('images/project/','image-'.$result->id);

					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}

					if(file_exists("images/project/{$result->image}")){
						remFile(__DIR__.'/../../public/images/project/'.$result->image);
					}

					ProjectimgModel::where('id',$result->id)->update(['image' => $upload['msg']['file_name']]);
		
				}
			}

			// New Image Added
			if(isset($_FILES['image']['name'])){
				foreach($_FILES['image']['name'] as $file){
					if (empty($file)) {
						echo goResult(false,"Opss! Gambar Tidak Ada atau Tidak Sesuai ");
						return;
					}
				}
				
				$upload 	= $this->upload_files(__DIR__.'/../../public/images/project/',$_FILES['image']);
				if($upload['auth']	== false){
					foreach ($upload['msg'] as $key => $value) {
						remFile(__DIR__.'/../../public/images/project/'.$value['file_name']);
					}
					echo goResult(false,'Opss! Gambar Project Tidak Terupload');
					return;
				}

				foreach ($upload['msg'] as $key => $value) {
					$image 					= new ProjectimgModel;
					$image->id_project 		= $project->id;
					$image->image 			= $value['file_name'];
					$image->save();
				}	
			}

			if($project->save()){
				echo goResult(true,"Project Telah Di Perbarui");
				return;
			}
		}
		else if ($url=="deleted" && $id != null){

			$project 			= ProjectModel::find($id);
			if(!isset($project->id)){
				redirect('superuser/project');
				return;
			}

			$imageproject 			= ProjectimgModel::where('id_project', $project->id)->get();

			foreach ($imageproject as $key => $result) {
				if(file_exists("images/project/{$result->image}")){
					remFile(__DIR__.'/../../public/images/project/'.$result->image);
				}
			}
			ProjectimgModel::where('id_project', $project->id)->delete();
			$project->delete();

			redirect('superuser/project');
		}
		else {		
			echo $this->blade->nggambar('admin.project.index',$data);	
			return;
		}
	}
// --------------------------------- EEND PRODUCT

// --------------------------------- START AUTH
	public function auth($url=null,$id=null){
		$data 						= $this->data;

		$this->middleware->access('auth',true);

		$data['menu']				= "auth";
		$data['auth']				= AuthModel::desc()->get();

		if($url=="create"){
			$data['type']			= "create";
			$data['authrule'] 		= [];
			echo $this->blade->nggambar('admin.auth.content',$data);	
			return;
		}
		else if($url=="checkusername" && $this->input->is_ajax_request()){
			$rules 		= [
						    'required' 	=> [
						        ['username']
						    ],
						    'alphaNum'	=> [
						    	['username']
						    ],
						    'lengthMin'	=>	[
				    			['username',5]
				    		]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$check 				= AuthModel::where('username',$this->input->post('username'))->first();

			if($check){

				if($this->input->post('id')==$check->id){
					echo goResult(true,"username bisa di pakai");
					return;
				}

				echo goResult(false,"Opps! Username Telah Terpakai");
				return;
			}

			echo goResult(true,"username bisa di pakai");

			return;
		}
		else if($url=="changestatus" && $this->input->is_ajax_request()){
			$rules 		= [
						    'required' 	=> [
						        ['status'],['id']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$auth 				= AuthModel::find($this->input->post('id'));
			if(!$auth){
				echo goResult(false,"uknown id");
				return;
			}
			$auth->status 		= $this->input->post('status');
			$auth->save();
			echo goResult(true,"changed");

			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['username'],['password'],['conf_password']
						    ],
						    'alphaNum'	=> [
						    	['username']
						    ],
						    'lengthMin'	=>	[
				    			['password',8],['conf_password',8],['username',5]
				    		]
						  ];
			if(!$this->input->post('access_all')){
				$rules['required'][] 	= ['access'];
			}

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			if($this->input->post('password')!==$this->input->post('conf_password')){
				echo goResult(false,"Password dan konfirmasi password tidak cocok");
				return;
			}

			$check 				= AuthModel::where('username',$this->input->post('username'))->first();

			if($check){
				echo goResult(false,"Opps! Username Telah Terpakai");
				return;
			}

			$auth 				= new AuthModel;

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'ADMIN__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/admin','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				$auth->image= $upload['msg']['file_name'];
			}
			

			$auth->name				= $this->input->post('name');
			$auth->username			= $this->input->post('username');
			$auth->password 		= DefuseLib::encrypt($this->input->post('password'));
			$auth->ipaddress 		= $this->input->ip_address();
			$auth->lastlog 			= date('Y-m-d H:i:s ');
			$auth->status 			= (null !==$this->input->post('status') ? 'active' : 'blocked');
			if($auth->save()){

				if($this->input->post('access_all')){
					$access 				= new AuthRuleModel;
					$access->id_superuser	= $auth->id;
					$access->menu 			= 'all';
					$access->save();
				}
				else {
					foreach ($this->input->post('access') as $result) {
						$access 				= new AuthRuleModel;
						$access->id_superuser	= $auth->id;
						$access->menu 			= $result;
						$access->save();
					}	
				}

				echo goResult(true,"Akun Administrator Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null){

			$data['auth'] 			= AuthModel::find($id);

			$data['authrule'] 		= [];

			foreach ($data['auth']->rule as $result) {
				array_push($data['authrule'], $result->menu);
			}

			$data['type']			= "update";

			if(!isset($data['auth']->id)){
				redirect('superuser/auth');
				return;
			}

			echo $this->blade->nggambar('admin.auth.content',$data);	
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true){

			$auth 		= AuthModel::find($id);

			if(!$auth){
				echo goResult(false,"Akun Administrator Tidak Di Temukan");
				return;
			}

			$rules 		= [
						    'required' 	=> [
						        ['name'],['username'],['password'],['conf_password']
						    ],
						    'alphaNum'	=> [
						    	['username']
						    ],
						    'lengthMin'	=>	[
				    			['password',8],['conf_password',8],['username',5]
				    		]
						  ];

			if(!$this->input->post('access_all')){
				$rules['required'][] 	= ['access'];
			}

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}


			if($this->input->post('password')!==$this->input->post('conf_password')){
				echo goResult(false,"Password dan konfirmasi password tidak cocok");
				return;
			}

			$check 				= AuthModel::where('username',$this->input->post('username'))->first();

			if($check){
				if($check->id!==$auth->id){
					echo goResult(false,"Opps! Username Telah Terpakai");
					return;	
				}
			}

			if (!empty($_FILES['image']['name']) && $this->isImage('image')==true) {

				$filename 	= 'ADMIN__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload('images/admin','image',$filename);
				if($upload['auth']	== false){
					echo goResult(false,$upload['msg']);
					return;
				}	

				if($auth->image!==""){
					remFile(__DIR__.'/../../public/images/admin/'.$auth->image);
				}

				$auth->image= $upload['msg']['file_name'];
			}
			

			$auth->name				= $this->input->post('name');
			$auth->username			= $this->input->post('username');
			$auth->password 		= DefuseLib::encrypt($this->input->post('password'));
			$auth->ipaddress 		= $this->input->ip_address();
			$auth->lastlog 			= date('Y-m-d H:i:s ');
			$auth->status 			= (null !==$this->input->post('status') ? 'active' : 'blocked');
			if($auth->save()){

				AuthRuleModel::where('id_superuser',$auth->id)->delete();

				if($this->input->post('access_all')){
					$access 				= new AuthRuleModel;
					$access->id_superuser	= $auth->id;
					$access->menu 			= 'all';
					$access->save();
				}
				else {
					foreach ($this->input->post('access') as $result) {
						$access 				= new AuthRuleModel;
						$access->id_superuser	= $auth->id;
						$access->menu 			= $result;
						$access->save();
					}	
				}

				echo goResult(true,"Akun Administrator Di Perbarui");
				return;
			}
		}
		else if ($url=="delete" && $id != null){


			$auth 			= AuthModel::find($id);

			if(!$auth){
				redirect('superuser/auth');
				return;
			}

			AuthRuleModel::where('id_superuser',$auth->id)->delete();

			if($auth->image!=""){
				remFile(__DIR__.'/../../public/images/admin/'.$auth->image);
			}
			
			$auth->delete();

			redirect('superuser/auth');
		}
		else {
			echo $this->blade->nggambar('admin.auth.index',$data);	
			return;
		}
	}
// --------------------------------- END AUTH

// --------------------------------- MAIN SUbSCRIBE
	public function subscribe($page=null,$id=null){

		$data 				= $this->data;
		$data['menu'] 		= 'subscribe';

		$this->middleware->access('subscribe',true);

		if($page == 'delete' && $id != null){

			$subscribe 			= subscribeModel::find($id);

			if(!isset($subscribe->id)){
				redirect('superuser/subscribe');
				return;
			}
			echo "tes";
			$subscribe->delete();

			redirect('superuser/subscribe');

		}elseif($page == 'respon' && $id != null){

			$subscribe 			= subscribeModel::find($id);

			if(!isset($subscribe->id)){
				redirect('superuser/subscribe');
				return;
			}
			
			$subscribe->status 		= '1';
			$subscribe->save();

			redirect('superuser/subscribe');

		}else{

			$data['subscribe'] 	= subscribeModel::desc()->get();

			echo $this->blade->nggambar('admin.subscribe.index', $data);

		}
	}
// --------------------------------- END MAIN SUbSCRIBE

// --------------------------------- START CONFIGURATION 
	public function config($page='about'){
		$data 						= $this->data;
		$data['menu']				= 'config';
		$this->middleware->access('config',true);
		switch ($page) {
			case 'about':
				$data['submenu']	= 'about';
				echo $this->blade->nggambar('admin.config.about',$data);
				break;
			case 'aboutsave':
				$config 	= $data['config'];

				$rules 		= [
							    'required' 	=> [
							        ['name'],['address'],['gmap'],['gmap_query'],['opentime'],['description']
							    ]
							  ];

				$validate 	= Validation::check($rules,'post');

				if(!$validate->auth){
					echo goResult(false,$validate->msg);
					return;
				}

				$config->name 			= $this->input->post('name');
				$config->description 	= $this->input->post('description');
				$config->address 		= $this->input->post('address');
				$config->gmap 			= $this->input->post('gmap');
				$config->gmap_query 	= $this->input->post('gmap_query');
				$config->opentime 		= $this->input->post('opentime');

				$config->save();
				echo goResult(true,"Pengaturan , Tentang Website Di Simpan");
				return;

				break;
			case 'contact':
				$data['submenu']	= 'contact';
				echo $this->blade->nggambar('admin.config.contact',$data);
				break;
			case 'contactsave':
				$config 	= $data['config'];

				$rules 		= [
							    'required' 	=> [
							        ['email'],['phone'],['whatsapp'],['bbm'],['contact']
							    ]
							  ];

				$validate 	= Validation::check($rules,'post');

				if(!$validate->auth){
					echo goResult(false,$validate->msg);
					return;
				}

				$config->email 		= $this->input->post('email');
				$config->phone	 	= $this->input->post('phone');
				$config->whatsapp 	= $this->input->post('whatsapp');
				$config->bbm 		= $this->input->post('bbm');
				$config->contact 	= $this->input->post('contact');

				$config->save();
				echo goResult(true,"Pengaturan , Kontak Di Simpan");
				return;
				break;
			case 'appearance':
				$data['submenu']	= 'appearance';
				echo $this->blade->nggambar('admin.config.appearance',$data);
				break;
			case 'appearancesave':
				$config 			= $data['config'];

				// Icon
				if (!empty($_FILES['icon']['name']) && $this->isImage('icon')==true) {
					$filename 	= 'ICON__'.date('Ymdhis');
					$upload 	= $this->upload('images/website','icon',$filename);
					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}	

					if($config->icon!==""){
						remFile(__DIR__.'/../../public/images/website/'.$config->icon);
					}

					$config->icon= $upload['msg']['file_name'];
				}

				if (!empty($_FILES['logo']['name']) && $this->isImage('logo')==true) {
					$filename 	= 'LOGO__'.date('Ymdhis');
					$upload 	= $this->upload('images/website','logo',$filename);
					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}

					if($config->logo!==""){
						remFile(__DIR__.'/../../public/images/website/'.$config->logo);
					}
	
					$config->logo= $upload['msg']['file_name'];
				}

				if (!empty($_FILES['logo_white']['name']) && $this->isImage('logo_white')==true) {
					$filename 	= 'LOGO_WHITE__'.date('Ymdhis');
					$upload 	= $this->upload('images/website','logo_white',$filename);
					if($upload['auth']	== false){
						echo goResult(false,$upload['msg']);
						return;
					}

					if($config->logo_white!==""){
						remFile(__DIR__.'/../../public/images/website/'.$config->logo_white);
					}

					$config->logo_white = $upload['msg']['file_name'];
				}

				$config->save();

				echo goResult(true,'Tampilan Di Simpan');
				return;

				break;
			case 'close':
				$data['submenu']	= 'close';
				echo $this->blade->nggambar('admin.config.close',$data);
				break;
			case 'closesave':

				$config 	= $data['config'];

				$rules 		= [
							    'required' 	=> [
							        ['description']
							    ]
							  ];

				$validate 	= Validation::check($rules,'post');

				if(!$validate->auth){
					echo goResult(false,$validate->msg);
					return;
				}

				$config->close_message 	= $this->input->post('description');
				$config->status 		= (null !== $this->input->post('status')) ? 0 : 1;

				$config->save();
				echo goResult(true,"Pengaturan , Maintenance Di Simpan");
				break;
			default:
				redirect('superuser');
				break;
		}
	}
// --------------------------------- END CONFIGURATION

// PRIVATE SECTION ---------------------------------------------
	private function validation($rules,$type){
		if($type=="post"){
			$v = new Valitron\Validator($_POST);	
		}
		else {
			$v = new Valitron\Validator($_GET);	
		}

		
		$v->rules($rules);
		if($v->validate()){
			return true;
		}
		else {
			return false;
		}
	}

	private function upload_files($path,$files,$filename=false)
    {
        $config = array(
            'upload_path'   => $path,
            'allowed_types' => 'jpg|gif|png|jpeg',
            'max_size'		=> '2000',
            'overwrite'     => false,
        );

        if($filename){
        	$config['file_name'] 	= $filename;
        }else {
        	$config['encrypt_name'] 	= FALSE;
        }

        $this->load->library('upload', $config);

        $images 		= array();
        $data['msg']	= array();
        $data['auth']	= false;
        foreach ($files['name'] as $key => $image) {
            $_FILES['image[]']['name']		= $files['name'][$key];
            $_FILES['image[]']['type']		= $files['type'][$key];
            $_FILES['image[]']['tmp_name']	= $files['tmp_name'][$key];
            $_FILES['image[]']['error']		= $files['error'][$key];
            $_FILES['image[]']['size']		= $files['size'][$key];

            $this->upload->initialize($config);

            if ($this->upload->do_upload('image[]')) {
            	$data['auth']		= true;
            	array_push($data['msg'],$this->upload->data());
            } else {
            	$data['auth']		= ($data['auth']==true) ? true : false;
            	array_push($data['msg'],$this->upload->display_errors());
            }
        }

        return $data;
    }

    
    private function upload($dir,$name ='userfile',$filename=false){
		$config['upload_path']      = $dir;
        $config['allowed_types']    = 'gif|jpg|png|jpeg';
        $config['max_size']         = 2000;

        if($filename){
        	$config['file_name'] 	= $filename;
        }else {
        	$config['encrypt_name'] 	= FALSE;
        }
        
        $this->load->library('upload', $config);

        $this->upload->initialize($config);

        if ( ! $this->upload->do_upload($name))
        {		
        		$data['auth'] 	= false;
                $data['msg'] 	= $this->upload->display_errors();
                return $data;
        }
        else
        {
        		$data['auth']	= true;
        		$data['msg']	= $this->upload->data();
        		return $data;
        }
	}

	private function upload_materi($type='file',$dir,$name ='userfile',$filename=null){
		$config['upload_path']      = $dir;
		$config['allowed_types'] 	= "*";

		if($type=='document'){
			$config['allowed_types']    = 'pdf|doc|docx|ppt|pptx|xls|xlsx|txt|text|jpeg|jpg|png';
		}
		else if ($type=='video'){
			$config['allowed_types']    = 'mkv|mp4|avi|flv|mov';
		}
		else if($type=="audio"){
			//$config['allowed_types']    = 'm4a|mp3|M4A|ogg|wav|mp4|x-m4a';	
			
		}
		else {
			$config['allowed_types']    = 'iso|7z|rar|zip';
		}
        

        if($filename==null){
        	$config['encrypt_name'] 	= FALSE;
        }
        else {
        	$config['file_name'] 		= $filename;
        }
        
        $this->load->library('upload');
        $this->upload->initialize($config);
        if ( ! $this->upload->do_upload($name))
        {		
        		$data['auth'] 	= false;
                $data['msg'] 	=$this->upload->display_errors();
                return $data;
        }
        else
        {
        		$data['auth']	= true;
        		$data['msg']	= $this->upload->data();
        		return $data;
        }
	}

	private function uploadVideo($dir,$name,$filename=null){
		$config['upload_path']      = $dir;
		$config['allowed_types']    = 'mkv|mp4|avi|flv|mov';

        if($filename==null){
        	$config['encrypt_name'] 	= FALSE;
        }
        else {
        	$config['file_name'] 		= $filename;
        }
        
        $this->load->library('upload');
        $this->upload->initialize($config);
        if ( ! $this->upload->do_upload($name))
        {		
        		$data['auth'] 	= false;
                $data['msg'] 	=$this->upload->display_errors();
                return $data;
        }
        else
        {
        		$data['auth']	= true;
        		$data['msg']	= $this->upload->data();
        		return $data;
        }
	}

	private function isVideo($file){
		$mime 		= ['video/mp4','video/x-matroska','video/x-msvideo','video/quicktime','video/x-flv'];
		if ( in_array($_FILES[$file]['type'], $mime)){
			return true;
		}
		else {
			return false;
		}
	}

	private function isAudio($file){
		$mime 		= ['audio/mpeg','audio/mp3','audio/x-m4a','audio/mp4','audio/x-aiff','audio/ogg','audio/vnd.wav'];
		if ( in_array($_FILES[$file]['type'], $mime)){
			return true;
		}
		else {
			return false;
		}
	}

	private function isImage($file){
		if ((($_FILES[$file]['type'] == 'image/gif') || ($_FILES[$file]['type'] == 'image/jpeg') || ($_FILES[$file]['type'] == 'image/png'))){
			return true;
		}
		else {
			return false;
		}
	}

	private function isDocument($file){
		if ( $_FILES[$file]['type'] == 'application/pdf' || $_FILES[$file]['type'] == 'application/msword' 
			|| $_FILES[$file]['type'] == 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' 
			|| $_FILES[$file]['type'] == 'application/vnd.ms-excel'  
			|| $_FILES[$file]['type'] == 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' 
			|| $_FILES[$file]['type'] == 'application/vnd.ms-powerpoint' 
			|| $_FILES[$file]['type'] == 'application/vnd.openxmlformats-officedocument.presentationml.presentation' 
			|| $_FILES[$file]['type'] == 'text/plain'  
			|| $_FILES[$file]['type'] == 'image/gif'
			|| $_FILES[$file]['type'] == 'image/jpeg' 
			|| $_FILES[$file]['type'] == 'image/png' 
		){

			return true;
		}
		else {
			return false;
		}
	}

	private function isArchive($file){
		if ( $_FILES[$file]['type'] == 'application/x-compressed' 
			|| $_FILES[$file]['type'] == 'application/x-zip-compressed' 
			|| $_FILES[$file]['type'] == 'application/zip' 
			|| $_FILES[$file]['type'] == 'multipart/x-zip' 
			|| $_FILES[$file]['type'] == 'application/x-rar-compressed' 
			|| $_FILES[$file]['type'] == 'application/octet-stream' 
			|| $_FILES[$file]['type'] == 'application/x-7z-compressed'  || $_FILES[$file]['type'] == 'application/x-gtar'   ){
			return true;
		}
		else {
			return false;
		}
	}
// END PRIVATE SECTIOn

}