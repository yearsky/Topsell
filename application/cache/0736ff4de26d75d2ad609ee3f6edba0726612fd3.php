<?php $__env->startSection('title'); ?>
	CONTACT US
<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/loaders/blockui.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/extension_blockui.js"></script>
	<script type="text/javascript">
	$("#form-contact").submit(function(e){
		e.preventDefault();

		$.ajax({
				url: 		$("#form-contact").attr("action"),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('body'),'<i class="fa fa-circle-o-notch fa-spin fa-fw"></i> Please Wait , Processing','#fff');		
				}
			})
			.done(function(data){
				$('body').unblock();
				sweetAlert({
					title: 	((data.auth==true) ? 'Pesan Terkirim' : "Opps!"),
					text: 	((data.auth==true) ? data.msg : data.msg),
					type: 	((data.auth==true) ? "success" : "error"),
				},
				function(){
					if(data.auth==true){
						redirect("<?php echo e(base_url('main')); ?>")
						return;
					}				
				})

			})
			.fail(function() {
			    $('body').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Something Wrong , Please Try Again Later",
					type: 	"error",
				},
				function(){
				
				});
			 })
	})
	</script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">CONTACT</h1>
		</div>
	</div>
</div>	
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
						<strong><?php echo e($config->name); ?></strong><br>
						<?php echo e($config->address); ?>

					</address>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
						<?php echo $config->opentime; ?>

					</address>
					</div>
				</div>

			</div>
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
					<?php if($config->email!=""): ?>
						<i class="ico fa fa-envelope"></i>
						<a href="mailto:<?php echo e($config->email); ?>?subject=hell%20hayyu">
						<?php echo e($config->email); ?>

						</a>
					<?php endif; ?>
					<?php if($config->phone!=""): ?>
						<br><i class="ico fa fa-phone"></i><?php echo e($config->phone); ?>

					<?php endif; ?>
					<?php if($config->whatsapp!=""): ?>
						<br><i class="ico fa fa-whatsapp"></i>
							<?php echo e($config->whatsapp); ?>

					<?php endif; ?>
					<?php if($config->bbm!=""): ?>
						<br><i class="ico fa fa-comments"></i>
							<?php echo e($config->bbm); ?>

					<?php endif; ?>
					<?php if($config->contact!=""): ?>
						<br><i class="ico fa fa-info-circle"></i>
							<?php echo e($config->contact); ?>

					<?php endif; ?>
					</address>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<form id="form-contact" method="post" action="<?php echo e(base_url('main/contact/submit')); ?>" >
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="nama">Nama</label>
							<input type="text" name="name" class="form-control" placeholder="Masukkan Nama Anda" required="">
						</div>
						<div class="form-group col-sm-6">
							<label for="email">Email</label>
							<input type="email" name="email" class="form-control" placeholder="Masukkan Email Anda" required="">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="subjek">Subjek</label>
							<input type="text" name="subject" class="form-control" placeholder="Subjek Pesan" required="">
						</div>
						<div class="form-group col-sm-6">
							<label for="email">Telepon</label>
							<input type="text" name="phone" class="form-control" placeholder="Masukkan Telepon Anda" required="">
						</div>
					</div>
					<div class="form-group">
						<label for="pesan">Pesan</label>
						<textarea type="text" name="message" rows="5" class="form-control" placeholder="Masukkan Pesan Anda" required=""></textarea>
					</div>
					<button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> Kirim Pesan</button>
				</form>
				<div class="social-icons m-t-30 social-icons-colored">
					<ul>
	                <?php foreach($sosmed as $result): ?>
	                  <li class="social-<?php echo e($result->type); ?>"> <a href="<?php echo e($result->url); ?>" target="_blank" title="<?php echo e($result->name); ?>"><i class="fa fa-<?php echo e($result->type); ?>"></i></a>
	                  </li>
	                <?php endforeach; ?>
					</ul>
				</div>
			</div>
			<div class="col-md-6">			
				<h4 class="text-uppercase">Our Store</h4>
				<div class="row m-t-40">
					<div class="col-md-10">

		            <ul class="list list-lines">
		              <?php foreach($store as $result): ?>
		              <li><strong><a href="<?php echo e($result->url); ?>"> <?php echo e($result->name); ?> </a></strong></li>
		              <?php endforeach; ?>
		            </ul>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>