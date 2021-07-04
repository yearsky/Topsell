<?php $__env->startSection('title'); ?>
	GALLERY PICTURE - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<!-- Page Banner -->
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('<?php echo e(base_url()); ?>images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">Gallery</h1>
			<span>picture</span>
		</div>
	</div>
</div>
<!-- Gallery -->
<section>
	<div class="container">
		<div id="isotope" class="isotope col-small-margins" data-isotope-mode="masonry" data-isotope-col="4" data-lightbox-type="gallery">
			<?php foreach($total as $result): ?>
			<div class="isotope-item">
				<div class="effect social-links">
					<img src="<?php echo e($result->imagedir); ?>">
					<div class="image-box-content">
						<p><a href="<?php echo e($result->imagedir); ?>" data-lightbox="gallery-item" title="<?php echo e($result->name); ?>"><i class="fa fa-expand"></i></a></p>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>