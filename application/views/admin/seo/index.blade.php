@extends('admin.template')

@section('title')
Konten SEO
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - SEO</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/seo')}}"><i class="icon-clipboard5 position-left"></i> SEO</a></li>
			<li class="active">Konten SEO</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-clipboard5"></i> Atur Konten</span> SEO
		<small class="display-block">
			Atur Konten SEO
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data SEO</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;float:none;padding:20px;">
					<form id="form-blog" class="form-horizontal"  action="{{ base_url('superuser/seo/save')}}" method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Meta Title <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Meta Title" name="title" 
								value="{{@$seo->title }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Meta Author <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Meta Author" name="author" 
								value="{{@$seo->author }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Meta Keyword <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Meta Keyword" name="keyword" 
								value="{{@$seo->keyword }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Meta Description <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea rows="4" class="form-control" placeholder="Meta Description" name="description">{{@$seo->description }}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Facebook Pixel </label>
							<div class="col-lg-10">
								<textarea rows="6" class="form-control" placeholder="Masukkan Kode Facebook Pixel Disini" name="fbpixel">{!! @$seo->fbpixel !!}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Google Analytics </label>
							<div class="col-lg-10">
								<textarea rows="2" class="form-control" placeholder="Masukkan Kode Google analytics Disini" name="analytic">{!! @$seo->analytic !!}</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Meta Image </label>
							<div class="col-lg-10">
								<input type="file" class="file-input-custom" name="image" accept="image/*">
								<span class="help-block">Ukuran Maksimum 3MB , Hanya File Gambar</span>
							</div>
						</div>
						
						<div class="text-right">
							<button type="submit" class="btn btn-primary">Simpan SEO <i class="icon-arrow-right14 position-right"></i></button>
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i>
							</a>
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
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
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
        initialPreview: ["<img src='{{ $seo->imagedir }}' class='file-preview-image' alt=''>",],
        overwriteInitial: true
    });


	$("#form-blog").submit(function(e){
			e.preventDefault();
			var formData = new FormData( $("#form-blog")[0] );
			$.ajax({
				url: 		$("#form-blog").attr('action'),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('#form-blog'),'Please Wait , Saving Data','#fff');		
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
						redirect("{{base_url('superuser/seo')}}");		
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
