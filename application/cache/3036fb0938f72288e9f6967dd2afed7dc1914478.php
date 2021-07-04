<?php $__env->startSection('title'); ?>
Administrasi - Pengaturan Website
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Pengaturan</span> - Administrasi</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/config')); ?>"><i class="icon-stack2 position-left"></i> Pengaturan</a></li>
			<li class="active">Pengaturan Website</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-droplet"></i> Pengaturan</span> Logo / Icon
		<small class="display-block">Mengatur Logo Serta Icon Website Anda</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="tabbable tab-content-bordered">
				<?php echo $__env->make('admin.config.pieces', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				<div class="tab-content ">
					<div class="tab-pane active">
						<div  style="padding:20px;">
                			<form id="form-config" class="form-horizontal" action="<?php echo e(base_url('superuser/config/appearancesave')); ?>" method="post">
								<div class="form-group">
									<label class="col-lg-2 control-label">icon Website<span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input type="file" class="file-input-custom" name="icon" accept="image/*" >
											<span class="help-block">Ukuran Maksimum 3MB , Hanya File Gambar
											</span>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Logo Warna<span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input type="file" class="file-input-custom" name="logo" accept="image/*" >
											<span class="help-block">Ukuran Maksimum 3MB , Hanya File Gambar
											</span>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Logo Putih<span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input type="file" class="file-input-custom" name="logo_white" accept="image/*" >
											<span class="help-block">Ukuran Maksimum 3MB , Hanya File Gambar
											</span>
									</div>
								</div>

								<div class="text-right">
									<button type="submit" class="btn btn-primary">Simpan Pengaturan <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">

    $("input[name=icon]").fileinput({
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
        initialPreview: ["<img src='<?php echo e($config->icondir); ?>' class='file-preview-image' alt=''>",],
        overwriteInitial: true,
    })

    $("input[name=logo]").fileinput({
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
        initialPreview: ["<img src='<?php echo e($config->logodir); ?>' class='file-preview-image' alt=''>",],
        overwriteInitial: true,
    })

    $("input[name=logo_white]").fileinput({
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
        initialPreview: ["<img src='<?php echo e($config->logowhitedir); ?>' class='file-preview-image' alt=''>",],
        overwriteInitial: true,
    })

$("#form-config").submit(function(e){
	e.preventDefault();
	
	var formData = new FormData( $("#form-config")[0] );
	$.ajax({
		url: 		$("#form-config").attr('action'),
		method: 	"POST",
		data:  		new FormData($("#form-config")[0]),
  		processData: false,
  		contentType: false,
		beforeSend: function(){
			blockMessage($('#form-config'),'Tunggu , Sedang Menyimpan Konfigurasi','#fff');		
		}
	})
	.done(function(data){

		$('#form-config').unblock();
		sweetAlert({
			title: 	((data.auth==false) ? "Opps!" : "Konfigurasi Di Simpan"),
			text: 	data.msg,
			type: 	((data.auth==false) ? "error" : "success"),
		},
		function(){
			if(data.auth!=false){
				redirect("<?php echo e(base_url('superuser/config/appearance')); ?>");		
				return;
			}
			return;
		});

	})
	.fail(function() {
	    $('#form-config').unblock();
		sweetAlert({
			title: 	"Opss!",
			text: 	"Ada Yang Salah! , Silahkan Coba Kembali",
			type: 	"error",
		});
	 })
	
});
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>