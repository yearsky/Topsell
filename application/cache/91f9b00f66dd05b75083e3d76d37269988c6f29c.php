<?php $__env->startSection('title'); ?>
	<?php echo e($project->title); ?> - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('meta'); ?>
 <meta title="author" content="<?php echo e($config->title); ?>">
<link rel="copyright" href="<?php echo e(base_url()); ?>">
<meta property="og:image" content="<?php echo e($project->imagedir); ?>">
<meta title="keywords" content="<?php echo e($seo->keyword); ?> , project">
<meta title="description" content="Our Project , <?php echo e(read_more($project->description,200)); ?>">
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
        <h1 class="text-uppercase text-medium">Project</h1>
        <span><?php echo e($project->title); ?></span>
      </div>
    </div>
  </div>

  <!-- Blog Post -->
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="post-content post-classic post-content-single col-md-9">
          <div class="post-item">

            <div class="post-slider">
              <div class="carousel" data-carousel-col="1">
              <?php foreach($project->gallery as $image): ?>
                <img src="<?php echo e($image->imagedir); ?>" title="<?php echo e($project->name); ?>">
              <?php endforeach; ?>
              </div>
            </div>
            <div class="post-content-details">
              <div class="post-title">
                <h2><?php echo e($project->title); ?></h2>
              </div>

              <div class="post-description">
                <?php echo $project->description; ?>

              </div>
                <div id="shareIcons"></div>
            </div>
          </div>
        </div>
        <div class="sidebar sidebar-modern col-md-3">
        <?php echo $__env->make('website.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
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