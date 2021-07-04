<?php $__env->startSection('title'); ?>
	<?php echo e($product->name); ?> - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('meta'); ?>
 <meta name="author" content="<?php echo e($config->name); ?>">
<link rel="copyright" href="<?php echo e(base_url()); ?>">
<meta property="og:image" content="<?php echo e($product->imagedir); ?>">
<meta name="keywords" content="<?php echo e($seo->keyword); ?> , <?php echo e($product->category->name); ?>">
<meta name="description" content="Produk Dari Kami <?php echo e($config->name); ?> , <?php echo e($product->name); ?> - Dengan Harga Rp. <?php echo e(number_format($product->price,0,',','.')); ?> , <?php echo e($product->category->name); ?> ">
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
        <h1 class="text-uppercase text-medium">product</h1>
        <span><?php echo e($product->title); ?></span>
      </div>
    </div>
  </div>

  <!-- Blog Post -->
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="post-content post-thumbnail col-md-9">
          <div class="post-item">
            <div class="post-slider">
              <div class="carousel" data-carousel-col="1">
              <?php foreach($product->images as $image): ?>
                <img src="<?php echo e($image->imagedir); ?>" title="<?php echo e($product->name); ?>">
              <?php endforeach; ?>
              </div>
                <div id="shareIcons"></div>
            </div>
            <div class="post-content-details">
              <div class="post-title">
                <h3><a href="#"><?php echo e($product->name); ?></a></h3>
              </div>
              <div class="post-date">
                <span class="post-date-day"><?php echo e(tgl_indo($product->created_at)); ?></span>
              </div>
              <div class="post-info">
                <span class="post-author">By Admin</span>
                <span class="post-category">in <a href="<?php echo e($product->category->url); ?>"><?php echo e($product->category->name); ?></a></span>
              </div>
              <div class="post-description">
                <?php echo $product->description; ?>                
              </div>
            </div>
          </div>
        </div>
        <div class="sidebar sidebar-modern col-md-3">
        <?php echo $__env->make('website.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        </div>
      </div>
    </div>
  </section>
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