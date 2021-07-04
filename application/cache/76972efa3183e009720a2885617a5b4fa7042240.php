<?php $__env->startSection('title'); ?>
	EVENT - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">EVENT</h1>
		</div>
	</div>
</div>

<section class="content">
	<div class="container">
		<div class="post-content post-2-columns">
		<?php if(count($event)>0): ?>
			<?php foreach($event as $result): ?>
			<div class="post-item">
				<div class="post-image">
					<a href="<?php echo e($result->url); ?>"><img src="<?php echo e($result->imagedir); ?>" title="<?php echo e($result->name); ?>"></a>
				</div>
				<div class="post-content-details">
					<div class="post-title">
						<h3><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></h3>
					</div>
					<div class="post-info">
						<span class="post-author">Admin</span>
						<span class="post-category">in <a href="#"><?php echo e(ucwords($result->type)); ?></a></span>
					</div>
					<div class="post-description">
						<p><?php echo e(read_more($result->description,200)); ?></p>
						<div class="post-info">
							<a href="<?php echo e($result->url); ?>" class="read-more">Read More <i class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
				<div class="post-meta">
					<div class="post-date">
						<span class="post-date-month"><?php echo e(tgl_indo($result->created_at)); ?></span>
					</div>
				</div>					
			</div>
			<?php endforeach; ?>
		<?php else: ?>
		Opps! Sorry There's No Event
		<?php endif; ?>
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


<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>