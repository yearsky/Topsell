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
		<span class="text-primary"><i class="icon-address-book"></i> Pengaturan</span> Informasi Kontak
		<small class="display-block">Mengatur Informasi Kontak Website Anda</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="tabbable tab-content-bordered">
				<?php echo $__env->make('admin.config.pieces', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				<div class="tab-content ">
					<div class="tab-pane active">
						<div  style="padding:20px;">
                			<form id="form-config" class="form-horizontal" action="<?php echo e(base_url('superuser/config/contactsave')); ?>" method="post">
								<div class="form-group">
									<label class="col-lg-2 control-label">Email </label>
									<div class="col-lg-10">
										<input class="form-control" type="email" placeholder="Email Website" name="email" value="<?php echo e($config->email); ?>" >
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">No Telepon <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input class="form-control" type="text" placeholder="No Telepon" name="phone" value="<?php echo e($config->phone); ?>" required>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Whatsapp<span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input class="form-control" type="text" placeholder="No Whatsapp" name="whatsapp" value="<?php echo e($config->whatsapp); ?>" required>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Pin BBM </label>
									<div class="col-lg-10">
										<input class="form-control" type="text" placeholder="Pin BBM" name="bbm" value="<?php echo e($config->bbm); ?>" >
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Kontak Lainnya </label>
									<div class="col-lg-10">
										<textarea  class="form-control" rows="2"  name="contact" cols="2"><?php echo e($config->contact); ?></textarea>
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
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">

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
				redirect("<?php echo e(base_url('superuser/config/contact')); ?>");		
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
		},
		function(){
			redirect("<?php echo e(base_url('superuser/config')); ?>");
		});
	 })
	
});
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>