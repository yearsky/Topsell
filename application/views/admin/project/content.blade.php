@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Project Baru' : 'Ubah Project' }} - Administrasi
@endsection

@section('style')
<style type="text/css">
	.image img{
		width: 100%;
		height: 200px;
		object-fit:cover;
		border:1px solid#ccc;
		margin-bottom: 15px;
	}
	.container-image {
		margin-bottom: 20px;
	}
</style>
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Project</h4>
		</div>
	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/project')}}"><i class="icon-stack2 position-left"></i> Project</a></li>
			<li class="active">Buat Project</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Project
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Project Baru' : 'Perbarui Project' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Project</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;float:none;padding:20px;">
					<form id="form-blog" class="form-horizontal" 
						action="{{ ($type=='create') ? base_url('superuser/project/created') : base_url('superuser/project/updated/'.$project->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Project <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Judul Project" name="title" 
								value="{{ ($type=='create') ? '' : $project->title }}" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Project <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea id="editor-full" rows="2" name="description" cols="2">{!! ($type=='create') ? '' : $project->description !!}</textarea>
							</div>
						</div>
						<!-- 
						<div class="form-group">
							<label class="col-lg-2 control-label">Status Project<span class="text-danger"> <b>*</b></span></label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="type" value="0" class="switch" data-on-text="Finished" data-off-text="Ongoing" data-on-color="success" data-off-color="default" {{(@$project->type=='finished') ? 'checked' : ''}} >
										Finished / Ongoing
									</label>
								</div>
							</div>
						</div> -->
						<div class="form-group">
							<label class="col-lg-2 control-label">Image Project <span class="text-danger"><b>*</b></span>
							</label>
							<div class="col-lg-10" style="padding:0">
								<label class="control-label">
									<button type="button" class="btn bg-teal-400 btn-sm btn-labeled" onclick="NewImage()">New Image <b><i class="icon-plus3"></i></b></button>
									<span class="help-block">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
								</label>
								<div id="box-image" style="margin-top:20px">
									@if($type=="update")
										@if(count($project->gallery)>=0)
											@foreach($project->gallery as $image)
											<div class="col-md-4 col-sm-6 container-image">
												<div class="image">
													<img src="{{$image->imagedir}}" >
												</div>
												<div class="col-sm-10"style="padding:0">
													<input type="hidden" name="isimage-{{$image->id}}" value="true">
													<div class="media-body">
														<div class="uploader bg-primary"><input type="file" onchange="uploadImage(this)" name="image-{{$image->id}}" accept="image/*" class="file-styled">
														<span class="action" style="-webkit-user-select: none;"><i class="icon-googleplus5"></i></span></div>
													</div>
												</div>
												<div class="col-sm-2" style="padding:0">
													<button type="button" class="btn bg-danger btn-block" onclick="removeImage(this)"><i class="icon-trash"></i></button>
												</div>
											</div>
											@endforeach
										@endif
									@else
										<div class="col-md-4 col-sm-6 container-image">
											<div class="image">
												<img src="{{img_holder()}}" >
											</div>
											<div class="col-sm-10"style="padding:0">
												<div class="media-body">
													<div class="uploader bg-primary"><input type="file" onchange="uploadImage(this)"  name="image[]" accept="image/*" required class="file-styled">
													<span class="action" style="-webkit-user-select: none;"><i class="icon-googleplus5"></i></span></div>
												</div>
											</div>
											<div class="col-sm-2" style="padding:0">
												<button type="button" class="btn bg-danger btn-block" onclick="removeImage(this)"><i class="icon-trash"></i></button>
											</div>
										</div>
									@endif
								</div>
							</div>
						</div>
						
						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Project' : 'Ubah Project' }} <i class="icon-arrow-right14 position-right"></i></button>
							@if($type=="update")
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
							@endif
						</div>
					</form>
				</div>
            </div>
		</div>
	</div>
</div>
@endsection

@section('script')
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_layouts.js"></script>

<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/uniform.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>


<script type="text/javascript">

	function NewImage(){
		
		var html 		= '<div class="col-md-4 col-sm-6 container-image">'+
								'<div class="image">'+
									'<img src="{{img_holder()}}">'+
								'</div>'+
								'<div class="col-sm-10" style="padding:0">'+
									'<div class="media-body">'+
										'<div class="uploader bg-primary"><div class="uploader bg-warning"><input type="file"  onchange="uploadImage(this)" name="image[]" accept="image/*" class="file-styled" required><span class="filename" style="-webkit-user-select: none;">No file selected</span><span class="action" style="-webkit-user-select: none;"><i class="icon-googleplus5"></i></span></div>'+
										'<span class="action" style="-webkit-user-select: none;"><i class="icon-googleplus5"></i></span></div>'+
									'</div>'+
								'</div>'+
								'<div class="col-sm-2" style="padding:0">'+
									'<button type="button" class="btn bg-danger btn-block" onclick="removeImage(this)"><i class="icon-trash"></i></button>'+
								'</div>'+
							'</div>';
		$("#box-image").append(html);
	}

	function removeImage(that){
		$(that).parents('.container-image').remove();
	}

	function  uploadImage(input) {

	    if (input.files && input.files[0]) {
	        var reader = new FileReader();

	        reader.onload = function (e) {
	        	$(input).parents('.container-image').find('img').attr('src', e.target.result)
	            $(input).next().html(read_more(e.target.result,10));
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	 $(".control-primary").uniform({
        radioClass: 'choice',
        wrapperClass: 'border-primary-600 text-primary-800'
    });


	$(".switch").bootstrapSwitch();	

	$("#form-blog").submit(function(e){
		e.preventDefault();
		var formData = new FormData( $("#form-blog")[0] );

		 for ( instance in CKEDITOR.instances ) {
	        CKEDITOR.instances[instance].updateElement();
	    }

		$.ajax({
			url: 		$("#form-blog").attr('action'),
			method: 	"POST",
			data:  		new FormData(this),
      		processData: false,
      		contentType: false,
			beforeSend: function(){
				blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Project" : "Memperbarui Project" }}','#fff');		
			}
		})
		.done(function(data){
			$('#form-blog').unblock();
			sweetAlert({
				title: 	((data.auth==false) ? "Opps!" : '{{ ($type =="create") ? "Project Baru Telah Di Buat" : "Project Di Perbarui" }}'),
				text: 	data.msg,
				type: 	((data.auth==false) ? "error" : "success"),
			},
			function(){
				if(data.auth!=false){
					redirect("{{base_url('superuser/project')}}");		
					return;
				}
			});

		})
		.fail(function() {
		    $('#form-blog').unblock();
			sweetAlert({
				title: 	"Opss!",
				text: 	"Ada Yang Salah!, Silahkan Coba Lagi Nanti",
				type: 	"error",
			},
			function(){
				/*redirect('{{ ($type =="create") ?  base_url("administrasi/project/create") : base_url("administrasi/project/update/".$project->id."/".seo($project->name))}}');*/
			});
		 })
		
	})

</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_select2.js"></script>
@endsection
