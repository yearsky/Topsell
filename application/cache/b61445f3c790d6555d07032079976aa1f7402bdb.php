<?php $__env->startSection('title'); ?>
<?php echo e(($type=="create") ? 'Buat Partnership Baru' : 'Ubah Partnership'); ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Partnership</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/partnership')); ?>"><i class="icon-thumbs-up2 position-left"></i> Partnership</a></li>
			<li class="active">	<?php echo e(($type=="create") ? 'Buat Partnership Baru' : 'Perbarui Partnership'); ?></li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-thumbs-up2"></i> <?php echo e(($type=="create") ? 'Buat' : 'Ubah'); ?></span> Partnership
		<small class="display-block">
			<?php echo e(($type=="create") ? 'Buat Partnership Baru' : 'Perbarui Partnership'); ?>

		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Partnership</h6>
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
						action="<?php echo e(($type=='create') ? base_url('superuser/partnership/created') : base_url('superuser/partnership/updated/'.$partner->id)); ?>" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Partnership <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Nama Partnership" name="name" 
								value="<?php echo e(($type=='create') ? '' : $partner->name); ?>" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">URL Partnership <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="URL Partnership" name="url" 
								value="<?php echo e(($type=='create') ? '' : $partner->url); ?>" required>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-lg-2 control-label">Gambar Partnership<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input type="file" class="file-input-custom" name="image" accept="image/*" <?php echo e(($type=='create') ? '' : ''); ?>>
									<span class="help-block"> <?php echo e(($type=='create') ? '' : '( Jangan Ubah Jika Tidak Ada Perubahan)'); ?>  
									Ukuran Maksimum 3MB , Hanya File Gambar
									</span>
							</div>
						</div>

						<div class="text-right">
							<button type="submit" class="btn btn-primary"><?php echo e(($type=='create') ? 'Buat Partnership' : 'Ubah Partnership'); ?> <i class="icon-arrow-right14 position-right"></i></button>
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
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
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
        initialPreview: ["<img src='<?php echo e(($type=='create') ? img_holder() : $partner->imagedir); ?>' class='file-preview-image' alt=''>",],
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
					blockMessage($('#form-blog'),'Tunggu Sebentar, <?php echo e(($type =="create") ? "Menambahkan Partnership" : "Memperbarui Partnership"); ?>','#fff');		
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
						redirect("<?php echo e(base_url('superuser/partnership')); ?>");		
						return;
					}
				});

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! Silahkan Coba Lagi Nanti",
					type: 	"error",
				});
			 })
			
		})

</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>