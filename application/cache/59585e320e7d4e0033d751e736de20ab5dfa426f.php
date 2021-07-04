<?php $__env->startSection('title'); ?>
	OUR PROJECT - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Project</h1>
			</div>
		</div>
	</div>

	<section class="m-b-0 p-b-0">
		<div class="container">
			<div class="post-content post-4-columns">
				<?php foreach($project as $result): ?>
				<div class="post-item">
					<div class="post-image">
                	<?php foreach($result->gallery as $image): ?>
						<a href="<?php echo e($result->url); ?>"><img src="<?php echo e($image->imagedir); ?>" title="<?php echo e($result->name); ?>"></a>
                    	<?php break; ?>
                    <?php endforeach; ?>
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h4 class="text-center"><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></h4>
						</div>
						<div class="post-description text-justify">
						<p><?php echo e($result->description_sort); ?></p>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
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