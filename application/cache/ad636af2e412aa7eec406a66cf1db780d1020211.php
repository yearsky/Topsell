<?php $__env->startSection('title'); ?>
	NEWS - <?php echo e($config->name); ?>

	<?php if(isset($selected_category)): ?>
		, CATEGORY <?php echo e($selected_category->name); ?>

	<?php endif; ?>

	<?php if(isset($selected_tag)): ?>
		, TAG <?php echo e($selected_tag->name); ?>

	<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<!-- Page Banner -->
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">NEWS</h1>
			<?php if(isset($selected_category)): ?>
			<span><?php echo e($selected_category->name); ?></span>
			<?php endif; ?>
			
		</div>
	</div>
</div>
<!-- ./Page Banner -->

<!-- Blog Post -->
<section class="content">
	<div class="container">
		<div class="post-content post-3-columns">
		<?php if(count($news)>0): ?>
			<?php foreach($news as $result): ?>
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
						<span class="post-category">in <a href="<?php echo e($result->category->url); ?>"><?php echo e($result->category->name); ?></a></span>
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
					<div class="post-comments">
						<a href="#"><i class="fa fa-comment-o"></i> <span class="post-comments-number">324</span></a>
					</div>
					<div class="post-share">
						<a href="#"><i class="fa fa-share-alt"></i> <span class="post-share-number">10</span></a>
					</div>
				</div>					
			</div>
			<?php endforeach; ?>
		<?php else: ?>
		Opps! Sorry There's No News
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
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>