<?php $__env->startSection('title'); ?>
<?php echo e(($type=="create") ? 'Buat Menu Pengunjung Baru' : 'Ubah Menu Pengunjung'); ?> - Administrasi
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/menupengunjung')); ?>"><i class="icon-stack2 position-left"></i> Menu Pengunjung</a></li>
			<li class="active">Menu Pengunjung</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> <?php echo e(($type=="create") ? 'Buat' : 'Ubah'); ?></span> Menu Pengunjung
		<small class="display-block">
			<?php echo e(($type=="create") ? 'Buat Menu Pengunjung' : 'Perbarui Menu Pengunjung'); ?>

		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Menu Pengunjung</h6>
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
						action="<?php echo e(($type=='create') ? base_url('superuser/menupengunjung/created') : base_url('superuser/menupengunjung/updated/'.$menupengunjung->id)); ?>" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Judul Menu Pengunjung <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Judul Menu Pengunjung" name="judul" 
								value="<?php echo e(($type=='create') ? '' : $menupengunjung->judul); ?>" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Link Menu <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Link Url" name="link" 
								value="<?php echo e(($type=='create') ? '' : $menupengunjung->link); ?>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Urutan <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Urutan" name="urutan" 
								value="<?php echo e(($type=='create') ? '' : $menupengunjung->urutan); ?>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Status </label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="aktif" value="0" class="switch" data-on-text="Aktif" data-off-text="Tidak Aktif" data-on-color="success" data-off-color="default" <?php echo e((@$menupengunjung->aktif==0) ? 'checked' : ''); ?> >
										Aktif / Tidak Aktif
									</label>
								</div>
							</div>
						</div>
						

						<div class="text-right">
							<button type="submit" class="btn btn-primary"><?php echo e(($type=='create') ? 'Buat Menu Pengunjung' : 'Ubah Menu Pengunjung'); ?> <i class="icon-arrow-right14 position-right"></i></button>
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

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
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
					blockMessage($('#form-blog'),'Please Wait , <?php echo e(($type =="create") ? "Menambahkan Menu Pengunjung" : "Memperbarui Menu Pengunjung"); ?>','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '<?php echo e(($type =="create") ? "Menu Pengunjung Di Buatkan" : "Menu Pengunjung Di Perbarui"); ?>'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("<?php echo e(base_url('superuser/menupengunjung')); ?>");		
						return;
					}
					//redirect('<?php echo e(($type =="create") ?  base_url("administrasi/slider/add") : base_url("administrasi/slider/edit/".$menupengunjung->id."/".seo($menupengunjung->title))); ?>');
				});
				//redirect("<?php echo e(base_url('dashboard/promo/list')); ?>");

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				},
				function(){
					/*redirect('<?php echo e(($type =="create") ?  base_url("administrasi/menupengunjung/create") : base_url("administrasi/menupengunjung/update/".$menupengunjung->id."/".seo($menupengunjung->title))); ?>');*/
				});
			 })
			
		})

</script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_select2.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>