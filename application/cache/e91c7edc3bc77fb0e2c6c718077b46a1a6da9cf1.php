<?php $__env->startSection('title'); ?>
	PARTNER - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Partner</h1>
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<ul class="grid grid-6-columns"> 
			<?php foreach($partner as $result): ?>
				<li>
					<a data-content="<?php echo e($result->name); ?>" title="<?php echo e($result->name); ?>" data-placement="top" data-toggle="popover" data-container="body" data-original-title="<?php echo e($result->name); ?>" data-trigger="hover">
						<img src="<?php echo e($result->imagedir); ?>">
					</a>
				</li>
            <?php endforeach; ?>
			</ul>
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