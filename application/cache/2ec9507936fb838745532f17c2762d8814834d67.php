<?php $__env->startSection('title'); ?>
	<?php echo e($news->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('meta'); ?>
 <meta name="author" content="<?php echo e($config->name); ?>">
<link rel="copyright" href="<?php echo e(base_url()); ?>">
<meta property="og:image" content="<?php echo e($news->imagedir); ?>">
<meta name="keywords" content="<?php echo e($news->category->name); ?> , <?php echo e($tag_txt); ?>">
<meta name="description" content="<?php echo e(read_more($news->description,170)); ?>">
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
				<h1 class="text-uppercase text-medium">NEWS</h1>
				<span><?php echo e($news->name); ?></span>
			</div>
		</div>
	</div>
	<!-- ./Page Banner -->

	<!-- Blog Post -->
	<section class="content">
		<div class="container">
			<div class="row">
				<div class="post-content post-classic post-content-single col-md-9">
					<div class="post-item">
						<div class="post-image">
							<a href="#"><img src="<?php echo e($news->imagedir); ?>"></a>
						</div>
						<div class="post-content-details">
							<div class="post-title">
								<h2><?php echo e($news->name); ?></h2>
							</div>
							<div class="post-info">
								<span class="post-author">Admin</span>
								<span class="post-category">in <a href="<?php echo e($news->category->url); ?>"><?php echo e($news->category->name); ?></a></span>
							</div>
							<div class="post-description">
								<?php echo $news->description; ?>

							</div>
						</div>
						<div class="post-meta">
							<div class="post-date">
								<span class="post-date-day">tanggal <?php echo e(tgl_indo($news->created_at)); ?></span>
							</div>
						</div>
						<div id="shareIcons"></div>
					</div>
					<div id="comments" class="comments">
						<div id="disqus_thread"></div>
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

	var disqus_config = function () {
	this.page.url = '<?php echo e($news->url); ?>';  // Replace PAGE_URL with your page's canonical URL variable
	this.page.identifier = <?php echo e($news->id); ?>; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
	};
	(function() { // DON'T EDIT BELOW THIS LINE
	var d = document, s = d.createElement('script');
	s.src = '//hayyu.disqus.com/embed.js';
	s.setAttribute('data-timestamp', +new Date());
	(d.head || d.body).appendChild(s);
	})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<script id="dsq-count-scr" src="//hayyu.disqus.com/count.js" async></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>