<?php $__env->startSection('title'); ?>
	Career - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>
	
<?php $__env->startSection('content'); ?>
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Career</h1>
			</div>
		</div>
	</div>

		<!-- Blog Post -->
		<section class="content">
			<div class="container">
				<div class="post-content post-thumbnail col-md-9">

				<?php foreach($job as $result): ?>
					<div class="post-item">
						<div class="post-image">
							<a href="#"><img src="<?php echo e($result->imagedir); ?>" title="<?php echo e($result->judul); ?>"></a>
						</div>
						<div class="post-content-details">
							<div class="post-title">
								<h3><a href="#"><?php echo e($result->judul); ?></a></h3>
							</div>
							<div class="post-info">
								<span class="post-author">Admin, </span>
								<span class="post-date-day"><?php echo e(tgl_indo($result->created_at)); ?></span>
							</div>
							<div class="post-description">
								<?php echo $result->deskripsi; ?>

							</div>
						</div>
					</div>
				<?php endforeach; ?>
				</div>
				<div class="sidebar col-md-3">
				<?php echo $__env->make('website.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
				</div>
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
						<nav class="text-center">
							<ul class="pagination">
							<?php echo $pagination; ?>

							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>