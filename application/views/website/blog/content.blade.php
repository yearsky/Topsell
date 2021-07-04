@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Blog Baru' : 'Ubah Blog' }} 
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Blog</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/blog')}}"><i class="icon-magazine position-left"></i> Blog</a></li>
			<li class="active">Buat Blog</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Blog
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Blog Baru' : 'Perbarui Blog' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Blog</h6>
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
						action="{{ ($type=='create') ? base_url('superuser/blog/created') : base_url('superuser/blog/updated/'.$blog->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Judul Blog <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Judul Blog" name="name" 
								value="{{ ($type=='create') ? '' : $blog->name }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Kategori Blog  <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<select class="select-search" name="category" required>
									<option value="">Pilih Kategori</option>
									@foreach($category as $result)
										@if($type=="update")
											<option value="{{$result->id}}" {{($result->id==$blog->category->id) ? "selected" : ""}}>
												{{$result->name}}
											</option>
										@else
											<option value="{{$result->id}}">{{$result->name}}</option>
										@endif
									@endforeach
								</select>

							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Tag Blog </label>
							<div class="col-lg-10">
								<select class="select-search" multiple="multiple" name="tag[]">
									<option value="">Pilih Tag</option>
									@foreach($tag as $result)
										@if($type=="update")
											<option value="{{$result->id}}" {{(in_array($result->id,$blogtag)) ? "selected" : ""}}>
												{{$result->name}}
											</option>
										@else
											<option value="{{$result->id}}">{{$result->name}}</option>
										@endif
									@endforeach
								</select>

							</div>
						</div>
						

						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Blog <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea  id="editor-full" rows="2"  name="description" cols="2">{!! ($type=='create') ? '' : $blog->description !!}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Gambar Blog<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input type="file" class="file-input-custom" name="image" accept="image/*" {{ ($type=='create') ? '' : '' }}>
									<span class="help-block"> {{ ($type=='create') ? '' : '( Jangan Ubah Jika Tidak Ada Perubahan)' }}  
									Ukuran Maksimum 3MB , Hanya File Gambar
									</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Status Blog<span class="text-danger"> <b>*</b></span></label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="status" value="0" class="switch" data-on-text="Publish" data-off-text="Draft" data-on-color="success" data-off-color="default" {{ (@$blog->status==0) ? 'checked' : '' }} >
										Publikasi / Simpan Ke Draft
									</label>
								</div>
							</div>
						</div>

						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Blog' : 'Ubah Blog' }} <i class="icon-arrow-right14 position-right"></i></button>
							@if($type=="update")
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
							@endif
						</div>
					</form>
				</div>
            </div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
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
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

	$(".select-search").select2({
		placeholder: "Pilih Tag Blog",
  		allowClear: true
	});

	$('.file-input-custom').fileinput({
        previewFileType: 'image',
        browseLabel: 'Select',
        browseClass: 'btn bg-slate-700',
        browseIcon: '<i class="icon-image2 position-left"></i> ',
        removeLabel: 'Remove',
        removeClass: 'btn btn-danger',
        removeIcon: '<i class="icon-cancel-square position-left"></i> ',
        uploadClass: 'hidden',
        uploadIcon: '<i class="icon-file-upload position-left"></i> ',
        layoutTemplates: {
            caption: '<div tabindex="-1" class="form-control file-caption {class}">\n' + '<span class="icon-file-plus kv-caption-icon"></span><div class="file-caption-name"></div>\n' + '</div>'
        },
        initialPreview: ["<img src='{{ ($type=='create') ? img_holder() : $blog->imagedir }}' class='file-preview-image' alt=''>",],
        overwriteInitial: true
    });


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
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Blog" : "Memperbarui Blog" }}','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : 'sukses'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/blog')}}");		
						return;
					}
				});

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				});
			 })
			
		})

</script>
@endsection
