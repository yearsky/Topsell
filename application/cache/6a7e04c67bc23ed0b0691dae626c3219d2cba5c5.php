<?php $__env->startSection('title'); ?>
<?php echo e(($type=="create") ? 'Buat Halaman Baru' : 'Ubah Halaman'); ?> - Administrator
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Halaman</h4>
		</div>
	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/halamanstatis')); ?>"><i class="icon-image-compare position-left"></i> Halaman</a></li>
			<li class="active">	<?php echo e(($type=="create") ? 'Buat Halaman Baru' : 'Perbarui Halaman'); ?></li>
		</ul>
	</div>
</div>


<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> <?php echo e(($type=="create") ? 'Buat' : 'Ubah'); ?></span> Halaman
		<small class="display-block">
			<?php echo e(($type=="create") ? 'Buat Halaman Baru' : 'Perbarui Halaman'); ?>

		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Halaman</h6>
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
						action="<?php echo e(($type=='create') ? base_url('superuser/halamanstatis/created') : base_url('superuser/halamanstatis/updated/'.$halamanstatis->id)); ?>" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Judul Halaman <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Judul Halaman" name="judul" value="<?php echo e(($type=='create') ? '' : $halamanstatis->judul); ?>" required>
								<input type="hidden" name="id" value="<?php echo e(($type=='create') ? '' : $halamanstatis->id); ?>" >
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Halaman <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea id="editor-full" rows="2" name="deskripsi" cols="2"><?php echo ($type=='create') ? '' : $halamanstatis->deskripsi; ?></textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Sampul Halaman<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input type="file" class="file-input-custom" name="image" accept="image/*" <?php echo e(($type=='create') ? '' : ''); ?>>
									<span class="help-block"> <?php echo e(($type=='create') ? '' : '( Jangan Ubah Jika Tidak Ada Perubahan)'); ?>  
									Ukuran Maksimum 2MB , Hanya File Gambar
									</span>
							</div>
						</div>
						<div class="text-right">
							<button type="submit" class="btn btn-primary"><?php echo e(($type=='create') ? 'Buat Halaman' : 'Ubah Halaman'); ?> <i class="icon-arrow-right14 position-right"></i></button>
							<?php if($type=="update"): ?>
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
							<?php endif; ?>
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

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>

<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

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
        initialPreview: ["<img src='<?php echo e(($type=='create') ? img_holder() : $halamanstatis->coverdir); ?>' class='file-preview-image' alt=''>",],
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
					blockMessage($('#form-blog'),'Please Wait , <?php echo e(($type =="create") ? "Menambahkan Halaman" : "Memperbarui Halaman"); ?>','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '<?php echo e(($type =="create") ? "Halaman Di Buatkan" : "Halaman Di Perbarui"); ?>'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("<?php echo e(base_url('superuser/halamanstatis')); ?>");		
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
				},
				function(){
				});
			 })
		})
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>