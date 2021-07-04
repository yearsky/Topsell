<?php $__env->startSection('title'); ?>
	<?php if($ctrl->input->get('q')): ?>
		YOU ARE SEARCHING PRODUCT LIKE '<?php echo e($attr_name); ?>'
	<?php else: ?>
		OUR PRODUCT - <?php echo e($config->name); ?>

		<?php if(isset($selected_category)): ?>
			, CATEGORY <?php echo e($selected_category->name); ?>

		<?php endif; ?>
	<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('admin_assets/css/aksa.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Product</h1>

	<?php if($ctrl->input->get('q')): ?>
		<span>YOU ARE SEARCHING PRODUCT LIKE '<?php echo e($attr_name); ?>'</span>
				
	<?php else: ?>
		<?php if(isset($selected_category)): ?>
		<span><?php echo e($selected_category->name); ?></span>
		<?php endif; ?>
	<?php endif; ?>
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<div class="post-content post-4-columns">
			<?php if(count($product)>0): ?>
				<?php foreach($product as $result): ?>

				<div class="post-item">
					<div class="post-image">
						<a href="<?php echo e($result->url); ?>"><img src="<?php echo e($result->imagedir); ?>" title="<?php echo e($result->name); ?>"></a>
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h4 class="text-center"><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></h4>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			<?php else: ?>
				Opps! Sorry There's No Product
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