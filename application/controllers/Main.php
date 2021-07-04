<?php
use Illuminate\Database\Capsule\Manager as Capsule;
use Carbon\Carbon;

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->data['config'] 				= ConfigModel::find(1);
		$this->data['seo'] 					= SeoModel::find(1);
		$this->data['sosmed']				= SosmedModel::desc()->get();
		$this->data['menupengunjung']		= MenupengunjungModel::Aktif()->orderby('urutan', 'asc')->get();
		$this->data['menu']					= "home";

		//statistik pengunjung
		$ip      					= $_SERVER['REMOTE_ADDR']; // Mendapatkan IP komputer user
		$tanggal 					= date("Ymd"); // Mendapatkan tanggal sekarang
		$waktu   					= time();
		$date_min 					= strtotime("-1 day");
		$kemarin 					= date('Y-m-d', $date_min);
		$tahun_ini 					= date('Y');
		$bulan_ini					= date('m');
		$bataswaktu       			= time() - 300;
		
		// Mencek berdasarkan IPnya, apakah user sudah pernah mengakses hari ini 
		$s 							= StatistikModel::where('ip', $ip)->where('tanggal',$tanggal)->get();

		if(count($s) == 0){
			$statistik 				= new StatistikModel;
			$statistik->ip 			= $ip;
			$statistik->tanggal 	= $tanggal;
			$statistik->hits 		= 1;
			$statistik->online 		= $waktu;
			$statistik->save();
        } else{
			$statis 				= StatistikModel::where('ip',$ip)->get()->first();
			$statis->ip 			= $ip;
			$statis->tanggal 		= $tanggal;
			$statis->hits 			= $statis->hits +1;
			$statis->online 		= $waktu;
			$statis->save();
        }

		$this->data['pengunjung']	= StatistikModel::where('tanggal', $tanggal)->groupBy('ip')->count('hits');
		$this->data['kemarin'] 		= StatistikModel::where('tanggal', $kemarin)->get()->count('hits');
		$this->data['perbulan']		= StatistikModel::where('tanggal', 'LIKE', '%'.$tahun_ini.'-'.$bulan_ini.'%')->get()->count('hits');
		$this->data['pertahun']		= StatistikModel::where('tanggal', 'LIKE', '%'.$tahun_ini.'%')->get()->count('hits');
		$this->data['total']		= StatistikModel::get()->count('hits');
		$this->data['online'] 		= StatistikModel::where('online','>',$bataswaktu)->get()->count('hits');	

		$this->blade->sebarno('ctrl', $this);
	}


// ---------------------------------- MENU HOME
	public function index(){
		$data 						= $this->data;
		$data['menu']				= "home";
		$data['slider'] 			= SliderModel::notDraft()->desc()->get();
		$data['slider2'] 			= SliderModel::notDraft()->desc()->get();
		$data['service'] 			= ServiceModel::notDraft()->desc()->take(4)->get();
		$data['news'] 				= BlogModel::notDraft()->desc()->take(3)->get();
		$data['gallery_video']		= GalleryModel::type('video')->notDraft()->take(3)->desc()->get();
		$data['partner'] 			= PartnershipModel::take(6)->desc()->get();
		echo $this->blade->nggambar('website.home.index',$data);
	}
// ---------------------------------- END HOME
// ---------------------------------- MENU ABOUT
	public function about(){
		$data 						= $this->data;
		$data['menu']				= "about";
		echo $this->blade->nggambar('website.about.index',$data);
	}
// ---------------------------------- END ABOUT
// ---------------------------------- MENU Halamn
	public function halaman($id){
		$data 						= $this->data;
		$data['menu']				= "halaman";
		$data['halaman']			= HalamanModel::find($id);

		HalamanModel::whereId($id)->increment('view');
		echo $this->blade->nggambar('website.halaman.index',$data);
	}
// ---------------------------------- END Halaman
// ---------------------------------- MENU PRODUCT

	public function product($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'product';
		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();
		if($url=="detail" && $page!=0){

			$product 				= ProductModel::notDraft()->find($page);

			if(!$product){
				redirect('error');
				return;
			}

			ProductModel::notDraft()->whereId($page)->increment('view');
			$data['related'] 		= ProductModel::notDraft()->where('id_category',$product->id_category)
										->where('id','!=',$product->id)->take(3)->desc()->get();
			$data['product'] 		= $product;
			echo $this->blade->nggambar('website.product.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';


			$by 						= $this->input->get('by');

			$by_data 					= ['newest','oldest','priceasc','pricedesc'];
			if(!in_array($by, $by_data)){
				$by 					= 'newest';
			}

			if($by=="newest" || $by=="pricedesc"){
				$sort 					= 'desc';
			}
			else {
				$sort 					= 'asc';
			}

			// atribute set
			$data['attr_by'] 			= $by;
			$data['attr_name'] 			= $name;
			
			$paginate					= new Aksa_pagination;
			$data['page']				= $page;

			if($by=="newest" || $by=="oldest"){
				$by 					= 'created_at';
			}
			else {
				$by 					= 'price';
			}

			$data['total']				= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%');
			$data['product']			= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%');

			$data['total'] 				= $data['total']->get();
			$data['product'] 			= $data['product']->take(6)->skip($page*6)->orderBy($by,$sort)->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/product/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.product.index',$data);
			return;
		}
	}

// ---------------------------------- END PRODUCT
// ---------------------------------- MENU PRODUCT CATEGORY

	/*public function productcategory($id,$slug=null,$url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'productservices';
		$data['category_product'] 	= CategoryProductModel::desc()->get();
		$category 					= CategoryProductModel::find($id);
		$data['selected_category'] 	= $category;
		$data['popular_product'] 	= ProductModel::notDraft()->take(3)->orderBy('view','desc')->get();
		if(!$category){
			redirect('error');
			return;
		}

		if($url=="page"){

			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';


			$by 						= $this->input->get('by');

			$by_data 					= ['newest','oldest','priceasc','pricedesc'];
			if(!in_array($by, $by_data)){
				$by 					= 'newest';
			}

			if($by=="newest" || $by=="pricedesc"){
				$sort 					= 'desc';
			}
			else {
				$sort 					= 'asc';
			}




			// atribute set
			$data['attr_by'] 			= $by;
			$data['attr_name'] 			= $name;
			

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;

			if($by=="newest" || $by=="oldest"){
				$by 					= 'created_at';
			}
			else {
				$by 					= 'price';
			}

			

			$data['total']				= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);
			$data['product']			= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);

			$data['total'] 				= $data['total']->get();
			$data['product'] 			= $data['product']->take(6)->skip($page*6)->orderBy($by,$sort)->get();



			$data['pagination'] 		= $paginate->paginate(base_url('main/productcategory/'.$category->id.'/'.seo($category->name).'/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.product.index',$data);
			return;
		}
	}
*/
// ---------------------------------- END PRODUCT
// ---------------------------------- MAIN subscribe
	public function subscribe(){
		
		if($this->input->is_ajax_request() == true){

			$subscribe 			= new subscribeModel;
			$subscribe->email 	= $this->input->post('email');
			$subscribe->status 	= '0';

			if($subscribe->save()){

				echo goResult(true, "Email Successfully Send");
				return;

			}else{

				echo goResult(false, "Email Failed");
				return;

			}
		}
	}
// ---------------------------------- END MAIN subscribe
// ---------------------------------- MENU SERVICE

	public function service($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'service';

		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();

		if($url=="detail" && $page!=0){

			$service 				= ServiceModel::notDraft()->find($page);

			if(!$service){
				redirect('error');
				return;
			}

			$service->view 			= $service->view + 1;
			$service->save();

			$data['service'] 		= $service;
			echo $this->blade->nggambar('website.service.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;			

			$data['total']				= ServiceModel::notDraft()->desc()->get();
			$data['service']			= ServiceModel::notDraft()->take(12)->skip($page*12)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/service/page/'),5,12,count($data['total']),$page);
			echo $this->blade->nggambar('website.service.index',$data);
			return;
		}
	}

// ---------------------------------- END SERVICE
// ---------------------------------- MENU PROJECT

	public function project($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'project';

		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();

		if($url=="detail" && $page!=0){

			$project 				= ProjectModel::find($page);

			if(!$project){
				redirect('error');
				return;
			}

			$data['project'] 		= $project;
			echo $this->blade->nggambar('website.project.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;			

			$data['total']				= ProjectModel::desc()->get();
			$data['project']			= ProjectModel::take(12)->skip($page*12)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/project/page/'),5,12,count($data['total']),$page);
			echo $this->blade->nggambar('website.project.index',$data);
			return;
		}
	}

// ---------------------------------- END SERVICE
// ---------------------------------- MENU partner

	public function partner($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'partner';

		if($url=="detail" && $page!=0){

			$partner 				= PartnershipModel::notDraft()->find($page);

			if(!$partner){
				redirect('error');
				return;
			}

			$data['partner'] 		= $partner;
			echo $this->blade->nggambar('website.partner.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;			

			$data['total']				= PartnershipModel::desc()->get();
			$data['partner']			= PartnershipModel::take(12)->skip($page*12)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/partner/page/'),5,12,count($data['total']),$page);
			echo $this->blade->nggambar('website.partner.index',$data);
			return;
		}
	}

// ---------------------------------- END SERVICE
// ---------------------------------- MENU CAREER
	
	public function career($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 		 	= 'career';
		$data['category'] 		= CategoryBlogModel::desc()->get();
		$data['tag'] 			= TagModel::desc()->get();
		$data['popular_news'] 	= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']			= EventPromoModel::notDraft()->take(4)->desc()->get();
		if($url == 'proses' && $this->input->is_ajax_request()){
			$rules 		= [
						    'required' 	=> [
						        ['name'],['email'],['phone'],['job']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,'required');
				return;
			}

			$career 				= new CareerModel;
			$career->id_job 		= $this->input->post('job');
			$career->fullname 		= $this->input->post('name');
			$career->email 			= $this->input->post('email');
			$career->tlp 			= $this->input->post('phone');
			
			if (!empty($_FILES['file_cv']['name']) && ($this->isDocument('file_cv')==true || $this->isImage('file_cv')==true) ) {

				$filename 	= 'CV__'.seo($this->input->post('name')).'__'.date('Ymdhis');

				$upload 	= $this->upload_materi('images/cv','file_cv',$filename);
				if($upload['auth']	== false){
					echo goResult(false,'filekosong');
					return;
				}	

				$career->file_cv = $upload['msg']['file_name'];
			}
			
			if($career->save()){
				
				$job 								= JobModel::find($career->id_job);
				
				// send mail
				$email_conf['config']	= $this->data['config'];
				$email_conf['nama'] 	= $career->fullname;
				$email_conf['job'] 		= $job->judul;
				$email_conf['email'] 	= $career->email;
				$email_conf['tlp'] 		= $career->tlp;
				$email_conf['file_cv'] 	= $career->file_cv;
				
				$email 							= $email_conf['config']->email;
				$username 					= $email_conf['config']->name;

				$mail 								= new Magicmailer;
				//$mail->addAddress('karir@hayyu.id', $career->fullname);     
				$mail->addAddress('hayyusc@gmail.com', $career->fullname);     
				$mail->Body    				= $this->blade->nggambar('email.cv.upload_cv',$email_conf);
				$mail->Subject 			= 'Upload CV - '.$career->fullname;
				$mail->AltBody 			= 'Upload CV - '.$career->fullname;
				$mail->send();
				
				echo goResult(true,'sukses');
				
			}
						
		} else{			

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			
			$data['total'] 				= JobModel::asc()->get();
			$data['job']				= JobModel::take(4)->skip($page*4)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/career/page/'),5,4,count($data['total']),$page);
			echo $this->blade->nggambar('website.career.index', $data);
		}
	}
	
// ---------------------------------- END MENU CAREER
// ---------------------------------- MENU TESTIMONI

	public function testimoni($page="index",$id=null){
		$data 						= $this->data;
		$data['menu'] 				= 'testimoni';

		if($page=="detail" && $id!=null){
			$testimoni 				= TestimoniModel::notDraft()->find($id);
			if(!$testimoni){
				redirect('error');
				return;
			}

			$data['testimoni']		= $testimoni;
			$data['testimoni_other']= TestimoniModel::notDraft()->desc()->where('id','!=',$testimoni->id)->take(8)->get();
			echo $this->blade->nggambar('website.testimoni.content',$data);
			return;
		}
		elseif ($page=="index" && $id ==null){
			$data['testimoni'] 			= TestimoniModel::notDraft()->desc()->get();
			echo $this->blade->nggambar('website.testimoni.index',$data);
			return;
		}
		else{
			redirect('error');
		}
		return;
	}

// ---------------------------------- END TESTIMONI
// ---------------------------------- MENU NEWS

	public function news($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'news';
		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();
		if($url=="detail" && $page!=0){

			$news 				= BlogModel::notDraft()->find($page);

			if(!$news){
				redirect('error');
				return;
			}

			$data['tag_txt'] 	= '';

			foreach ($news->tags as $result) {
				$data['tag_txt'] .= $result->tag->name.',';
			}


			$data['news'] 		= $news;
			$data['related'] 	= BlogModel::notDraft()->where('id_category',$news->id_category)
										->where('id','!=',$news->id)->take(3)->desc()->get();
			echo $this->blade->nggambar('website.news.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';
			
			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			
			$data['total']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%');
			$data['news']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%');

			$data['total'] 				= $data['total']->get();
			$data['news'] 				= $data['news']->take(6)->skip($page*6)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/news/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.news.index',$data);
			return;
		}
	}

// ---------------------------------- END NEWS
// ---------------------------------- MENU NEWS CATEGORY

	public function newscategory($id,$slug=null,$url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'news';
		$data['category'] 			= CategoryBlogModel::desc()->get();

		$category 					= CategoryBlogModel::find($id);
		$data['selected_category'] 	= $category;

		$data['tag'] 				= TagBlogModel::desc()->get();
	

		$data['popular_news'] 		= BlogModel::notDraft()->take(3)->orderBy('view','desc')->get();

		if(!$category){
			redirect('error');
			return;
		}

		if($url=="page"){

			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';
			

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			

			$data['total']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);
			$data['news']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);

			$data['total'] 				= $data['total']->get();
			$data['news'] 				= $data['news']->take(6)->skip($page*6)->desc()->get();



			$data['pagination'] 		= $paginate->paginate(base_url('main/newscategory/'.$category->id.'/'.seo($category->name).'/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.news.index',$data);
			return;
		}
	}

// ---------------------------------- END NEWS CATEGORY
	// ---------------------------------- MENU NEWS CATEGORY

	public function productcategory($id,$slug=null,$url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'news';
		$data['categoryproduct'] 	= CategoryProductModel::desc()->get();

		$category 					= CategoryProductModel::find($id);
		$data['selected_category'] 	= $category;

		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();

		if(!$category){
			redirect('error');
			return;
		}

		if($url=="page"){

			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			
			$data['total']		= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);
			$data['product']	= ProductModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->where('id_category',$category->id);

			$data['total'] 				= $data['total']->get();
			$data['product'] 			= $data['product']->take(6)->skip($page*6)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/categoryproduct/'.$category->id.'/'.seo($category->name).'/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.product.index',$data);
			return;
		}
	}

// ---------------------------------- END NEWS CATEGORY
// ---------------------------------- MENU NEWS CATEGORY

	public function newstag($id,$slug=null,$url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'news';
		$data['category'] 			= CategoryBlogModel::desc()->get();

		$tag 						= TagModel::find($id);
		$data['selected_tag'] 		= $tag;

		$data['tag'] 				= TagModel::desc()->get();
	

		$data['popular_news'] 		= BlogModel::notDraft()->take(3)->orderBy('view','desc')->get();

		if(!$tag){
			redirect('error');
			return;
		}

		if($url=="page"){

			if(!is_numeric($page)){
				$page 	= 0;
			}

			$name 						= (null != $this->input->get('q')) ? $this->input->get('q') : '';
			

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;

			$blog_data 					= [];

			foreach ($tag->tags as $result) {
				$blog_data[] 			= $result->id_blog;
			}
			

			$data['total']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->whereIn('id',$blog_data);
			$data['news']				= BlogModel::notDraft()->where('name', 'LIKE', '%'.$name.'%')->whereIn('id',$blog_data);

			$data['total'] 				= $data['total']->get();
			$data['news'] 				= $data['news']->take(6)->skip($page*6)->desc()->get();



			$data['pagination'] 		= $paginate->paginate(base_url('main/newstag/'.$tag->id.'/'.seo($tag->name).'/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.news.index',$data);
			return;
		}
	}

// ---------------------------------- END NEWS TAG
// ---------------------------------- MENU GALLERY

	public function gallery($url='picture',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'gallery';
	
		if($url=="video"){

			if(!is_numeric($page)){
				$page 	= 0;
			}
			

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;			

			$data['total']				= GalleryModel::notDraft()->type('video')->desc()->get();
			$data['gallery']			= GalleryModel::notDraft()->type('video')->take(9)->skip($page*9)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/gallery/video/'),5,9,count($data['total']),$page);
			echo $this->blade->nggambar('website.gallery.video',$data);
			return;
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}
			
			$paginate					= new Aksa_pagination;
			$data['page']				= $page;			

			$data['total']				= GalleryModel::notDraft()->type('image')->desc()->get();
			$data['gallery']			= GalleryModel::notDraft()->type('image')->take(6)->skip($page*6)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/gallery/picture/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.gallery.picture',$data);
			return;
		}
	}

// ---------------------------------- END GALLERY
// ---------------------------------- MENU EVENT PROMO

	public function event($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'event';
		$data['category'] 			= CategoryBlogModel::desc()->get();
		$data['tag'] 				= TagModel::desc()->get();
		$data['popular_news'] 		= BlogModel::notDraft()->take(4)->orderBy('view','desc')->get();
		$data['events']				= EventPromoModel::notDraft()->take(4)->desc()->get();
		if($url=="detail" && $page!=0){

			$event 					= EventPromoModel::notDraft()->find($page);
			
			if(!$event){
				redirect('error');
				return;
			}

			$event->view 			+= 1;
			$event->save();
			$data['event'] 		= $event;
			echo $this->blade->nggambar('website.eventpromo.content',$data);
			return;
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			

			$data['total']				= EventPromoModel::notDraft()->get();
			$data['event']				= EventPromoModel::notDraft()->take(6)->skip($page*6)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/event/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.eventpromo.index',$data);
			return;
		}
	}

// ---------------------------------- END EVENT PROMO
// ---------------------------------- MENU PROMO
	/*public function promo($url='page',$page=0){
		$data 						= $this->data;
		$data['menu'] 				= 'eventpromo';
		if($url=="detail" && $page!=0){

			$promo 					= EventPromoModel::notDraft()->promo()->find($page);
			
			if(!$promo){
				redirect('error');
				return;
			}

			$promo->view 			+= 1;
			$promo->save();
			$data['promo'] 		= $promo;
			echo $this->blade->nggambar('website.promo.content',$data);
		}
		else {
			if(!is_numeric($page)){
				$page 	= 0;
			}

			$paginate					= new Aksa_pagination;
			$data['page']				= $page;
			

			$data['total']				= EventPromoModel::notDraft()->promo()->get();
			$data['promo']				= EventPromoModel::notDraft()->promo()->take(6)->skip($page*6)->desc()->get();

			$data['pagination'] 		= $paginate->paginate(base_url('main/promo/page/'),5,6,count($data['total']),$page);
			echo $this->blade->nggambar('website.promo.index',$data);
			return;
		}
	}*/

// ---------------------------------- END PROMO
// ---------------------------------- MENU CONTACT
	public function contact($url='index'){
		$data 						= $this->data;
		$data['menu'] 				= 'contact';
		$data['store'] 				= ProductModel::desc()->get();
		if($url=="submit" && $this->input->is_ajax_request()){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['email'],['phone'],['subject'],['message']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,$validate->msg);
				return;
			}

			$inbox 					= new InboxModel;
			$inbox->name 			= $this->input->post('name');
			$inbox->email 			= $this->input->post('email');
			$inbox->phone 			= $this->input->post('phone');
			$inbox->subject 		= $this->input->post('subject');
			$inbox->description 	= $this->input->post('message');
			$inbox->save();
			
			echo goResult(true,$validate->msg);
			return;
		}
		else {
			echo $this->blade->nggambar('website.contact.index',$data);
			return;
		}
	}

// ---------------------------------- END CONTACT
// ---------------------------------- MENU PRICELIST\

	public function pricelist($url='index'){
		$data 						= $this->data;
		$data['menu'] 				= 'pricelist';
		if($url=="submit" && $this->input->is_ajax_request()){

			$rules 		= [
						    'required' 	=> [
						        ['name'],['email'],['phone']
						    ],
						    'email'		=> [
						    	['email']
						    ]
						  ];

			$validate 	= Validation::check($rules,'post');

			if(!$validate->auth){
				echo goResult(false,'<p class="c-alert-message m-warning m-validation-error" style="display: none;"><i class="ico fa fa-exclamation-circle"></i> '.$validate->msg.'</p>');
				return;
			}

			$pricelist 				= new PricelistModel;
			$pricelist->token 		= getToken(18).date('ymdhis');
			$pricelist->name 		= $this->input->post('name');
			$pricelist->email 		= $this->input->post('email');
			$pricelist->phone 		= $this->input->post('phone');
			$pricelist->save();

			$response['html']		= '<p class="c-alert-message m-success" style="display: none;"><i class="ico fa fa-check-circle"></i>Thanks! For Download Our Price List ,  we will redirect soon , not downloading yet ? <a href="'.$pricelist->urldownload.'">Click Here</a></p>';
			$response['download']	= $pricelist->urldownload;
			echo goResult(true,$response);
			return;
		}
		else {
			echo $this->blade->nggambar('website.pricelist.index',$data);
			return;
		}
	}

	public function pricelistdownload($token){
		$data 						= $this->data;
		$config 					= $data['config'];
		$pricelist 					= PricelistModel::where('token',$token)->first();
		if(!$pricelist){
			exit('Opps! Unknown Token Download , Please Submit Again To Download');
		}

		$data 	= file_get_contents('pricelist/'.$config->file_pricelist);
		$this->load->helper('download');
		force_download(	$config->name.'- PRICE LIST - '.tgl_indo(date('Y-m-d')).'.'.goExplode($config->file_pricelist,'.',1),$data);
	}

// ---------------------------------- END PRICELIST

// ---------------------------------- MENU SEARCH
	public function search(){
		$data 						= $this->data;
		$data['menu'] 				= 'home';

		$query 						= '';
		if($this->input->get('q')){
			$query 					= strtolower($this->input->get('q'));
		}
		$data['query']				= $query;

		$data['category']			= CategoryBlogModel::where('name', 'LIKE', "%{$query}%")->get();
		$data['tag']				= TagModel::where('name', 'LIKE', "%{$query}%")->get();
		$data['news']				= BlogModel::where('name', 'LIKE', "%{$query}%")->notDraft()->get();

		$data['category_product']	= CategoryProductModel::where('name', 'LIKE', "%{$query}%")->get();
		$data['product']			= ProductModel::where('name', 'LIKE', "%{$query}%")->notDraft()->get();

		$data['service'] 			= ServiceModel::where('name', 'LIKE', "%{$query}%")->notDraft()->get();
		$data['eventpromo'] 		= EventPromoModel::notDraft()->where('name', 'LIKE', "%{$query}%")->get();

		$other 						= 0;
		if($query!=""){

			if (strpos('category  blog', $query) !== false) {
				$data['category']		= CategoryBlogModel::desc()->get();
				$data['news']			= BlogModel::notDraft()->get();
				$data['tag']			= TagModel::get();
			}	

			if (strpos('category product', $query) !== false) {
				$data['category_product']	= CategoryProductModel::desc()->get();
				$data['product']			= ProductModel::notDraft()->get();
			}	

			if (strpos('service', $query) !== false) {
				$data['service'] 		= ServiceModel::notDraft()->get();
			}
			if (strpos('event promo', $query) !== false) {
				$data['eventpromo'] 	= EventPromoModel::notDraft()->get();
			}
			if (strpos('about', $query) !== false) {
				$other++;
				$data['other_about'] = true;
			}

			if (strpos('gallery picture video', $query) !== false) {
				$other++;
				$data['other_gallery'] = true;
			}

			if (strpos('testimoni testimonial', $query) !== false) {
				$other++;
				$data['other_testimoni'] = true;
			}

			if (strpos('contact', $query) !== false) {
				$other++;
				$data['other_contact'] = true;
			}
		}
				

		$data['total'] 				= count($data['category']) + count($data['news']) + count($data['tag'])+ 
										count($data['category_product']) + count($data['product'])
										+ count($data['service']) + count($data['eventpromo']) + $other;
		echo $this->blade->nggambar('website.search.index',$data);
		return;
	}

// ---------------------------------- END SEARCH

// ---------------------------------- MENU ERROR
	public function error($url='index'){
		$data 						= $this->data;
		$data['menu'] 				= 'error';
		echo $this->blade->nggambar('website.error.index',$data);
		return;
	}

// ---------------------------------- END ERROR


	
	// Private Section Go Here .......................................
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

	private function upload($dir,$name ='userfile',$filename=false){
		$config['upload_path']      = $dir;
        $config['allowed_types']    = 'gif|jpg|png|jpeg';
        $config['max_size']         = 3000;

        if($filename){
        	$config['file_name'] 	= $filename;
        }else {
        	$config['encrypt_name'] 	= TRUE;
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

	private function isImage($file){
		if ((($_FILES[$file]['type'] == 'image/gif') || ($_FILES[$file]['type'] == 'image/jpeg') || ($_FILES[$file]['type'] == 'image/png'))){
			return true;
		}
		else {
			return false;
		}
	}
	
	private function upload_materi($dir,$name ='userfile',$filename=false){
		$config['upload_path']      = $dir;
        $config['allowed_types']    = 'doc|docx|jpg|png|jpeg|pdf';
        $config['max_size']         = 5000;

        if($filename){
        	$config['file_name'] 	= $filename;
        }else {
        	$config['encrypt_name'] 	= TRUE;
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
	
	private function isDocument($file){
		if ($_FILES[$file]['type'] == 'application/msword' || $_FILES[$file]['type'] == 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' || $_FILES[$file]['type'] == 'application/pdf' || $_FILES[$file]['type'] == 'application/pdf' ){

			return true;
		}
		else {
			return false;
		}
	}


}
