<?php $__env->startSection('title'); ?>
	<?php echo e($halaman->judul); ?> - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Profile</h1>
                <span><?php echo e($halaman->judul); ?></span>
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<div class="row">
            <div class="col-md-1">
            </div>
            <div class="post-content post-classic post-content-single col-md-10">
                <div class="post-item">
                	<?php if(!empty($halaman->cover)): ?>
					<div class="post-image">
						<a href="#"><img src="<?php echo e($halaman->coverdir); ?>" title="<?php echo e($halaman->judul); ?>"></a>
					</div>
					<?php endif; ?>

                    <div class="post-content-details">
                        <div class="post-title">
                            <h2><?php echo e($halaman->judul); ?></h2>
                        </div>
                        <div class="post-info">
                            <span class="post-autor">Post by: <a href="#">Admin</a></span>
                        </div>
                        <div class="post-description">
                            <?php echo $halaman->deskripsi; ?>

                        </div>
                        <div id="shareIcons"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-1">
            </div>
			</div>
		</div>
	</section>
	<!-- Blog Post -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>
 $("#shareIcons").jsSocials({
    showLabel: false,
    showCount: false,
      shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
  });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>