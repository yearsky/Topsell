<?php $__env->startSection('title'); ?>
	<?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('styles'); ?>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.css">
<style type="text/css">
  .videoyoutube{
      text-align: center;
      background:linear-gradient(to bottom, #fefefe 0%, #d1d1d1 100%);
      border:1px solid #A8A8A8;
      border-radius:5px;
      margin:20px auto;
      width:90%;
      box-shadow: 1px 30px 30px -26px #818181;
  }
  .video-responsive {
    position: relative;
    padding-bottom: 56.25%;
    height: 0;
    overflow: hidden;
    margin:8px;
  }
  .video-responsive iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border:0;
  }
</style>
	<!-- nivo slider -->
    <link rel="stylesheet" href="<?php echo e(base_url('assets')); ?>/nivoslider/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo e(base_url('assets')); ?>/nivoslider/nivo-slider.css" type="text/css" media="screen" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.js"></script>
<script type="text/javascript">
    jQuery("a[rel=group]").click(function() {
            jQuery.fancybox({
                    'padding'       : 0,
                    'autoScale'     : false,
                    'transitionIn'  : 'none',
                    'transitionOut' : 'none',
                    'title'         : this.title,
                    'width'     	: 680,
                    'height'        : 495,
                    'href'          : this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
                    'type'          : 'swf',
                    'swf'           : {
                         'wmode'        : 'transparent',
                        'allowfullscreen'   : 'true'
                    }
                });

            return false;
        });

	setTimeout(function(){
		$('.video-youtube').each(function(){
		$(this).replaceWith('<iframe class="video-youtube loader" src="'+$(this).data('src')+'" allowfullscreen="allowfullscreen" height="281" width="500"></iframe>')})
	},5000);
</script>
<script type="text/javascript" src="<?php echo e(base_url('assets')); ?>/nivoslider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
$(window).load(function() {

    $('#slider').nivoSlider({ 
        effect: 'random',                 // Specify sets like: 'fold,fade,sliceDown' 
        slices: 15,                       // For slice animations 
        boxCols: 8,                       // For box animations 
        boxRows: 4,                       // For box animations 
        animSpeed: 500,                   // Slide transition speed 
        pauseTime: 3000,                  // How long each slide will show 
        startSlide: 0,                    // Set starting Slide (0 index) 
        directionNav: true,               // Next & Prev navigation 
        controlNav: false,                 // 1,2,3... navigation 
        controlNavThumbs: false,          // Use thumbnails for Control Nav 
        pauseOnHover: true,               // Stop animation while hovering 
        manualAdvance: false,             // Force manual transitions 
        randomStart: false,               // Start on a random slide 
        beforeChange: function(){},       // Triggers before a slide transition 
        afterChange: function(){},        // Triggers after a slide transition 
        slideshowEnd: function(){},       // Triggers after all slides have been shown 
        lastSlide: function(){},          // Triggers when last slide is shown 
        afterLoad: function(){}           // Triggers when slider has loaded 
    });

});
</script>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">
		<?php foreach($slider as $key => $result): ?>
            <img src="<?php echo e($result->imagedir); ?>" data-thumb="<?php echo e($result->imagedir); ?>" alt="<?php echo e($config->name); ?>" />
        <?php endforeach; ?>
        </div>
    </div>
<!-- 
	<div id="slider">
		<div id="slider-carousel">
		<?php foreach($slider as $key => $result): ?>
			<div style="background-image: url('<?php echo e($result->imagedir); ?>');" class="owl-bg-img fullscreen"></div>
		<?php endforeach; ?>
		</div>
	</div>
	/Slider -->

	<!-- About Us -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="videoyoutube">
						<div class="video-responsive">
							<div class="video-youtube loader" data-src="<?php echo e(youtube_iframe($config->youtube)); ?>"></div>
					    </div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="heading heading-left">
						<h2>Tentang Kami</h2>
					</div>
					<p class="text-justify"><?php echo e(read_more($config->description, 500)); ?></p>
					<div class="post-info">
						<a href="<?php echo e(base_url('main/about')); ?>" class="read-more">Read More <i class="fa fa-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ./About Us -->

	<!-- Kinerja -->
	<section class="m-b-0 p-b-0">
		<div class="container">
			<div class="heading heading-center">
				<h2>Layanan</h2>
			</div>

			<div class="post-content post-4-columns">
				<?php foreach($service as $result): ?>
				<div class="post-item">
					<div class="post-image">
						<a href="<?php echo e($result->url); ?>"><img src="<?php echo e($result->imagedir); ?>" title="<?php echo e($result->name); ?>"></a>
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

		</div>
	</section>
	<!-- ./Kinerja -->

	<!-- Videos -->
	<section class="background-grey">
		<div class="container">
			<div class="heading heading-center">
				<h2>Video</h2>
			</div>
			<div class="row">
				<?php foreach($gallery_video as $result): ?>
                <div class="col-md-4 col-sm-4 col-xs-12">
                   <div class="image-box text-center">  
                        <a href="<?php echo e($result->video); ?>" rel="group" title="<?php echo e($result->title); ?>">
                            <img src="<?php echo e(youtube_preview($result->video)); ?>">
                            <div class="youtube-play"><span><i class="fa fa-play"></i></span></div>
                        </a>
                            <span><?php echo e(read_more($result->name,40)); ?></span>
                    </div>
                </div>
				<?php endforeach; ?>
			</div>
		</div>
	</section>
	<!-- ./Videos -->

	<!-- Berita -->
	<section class="m-b-0">
		<div class="container">
			<div class="heading heading-center">
				<h2>Berita</h2>
			</div>
			<div class="post-content post-3-columns">
				<?php foreach($news as $result): ?>
				<div class="post-item">
					<div class="post-image">
						<a href="<?php echo e($result->url); ?>"><img src="<?php echo e($result->imagedir); ?>"></a>
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h3><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></h3>
						</div>
						<div class="post-info">
							<span class="post-author">Post by : Admin</span>
							<span class="post-category">in <a href="<?php echo e($result->category->url); ?>"><?php echo e($result->category->name); ?></a></span>
						</div>
						<div class="post-description text-justify">
							<p><?php echo e(read_more($result->description,270)); ?></p>
							<div class="post-info">
								<a href="<?php echo e($result->url); ?>" class="read-more">Read More <i class="fa fa-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</section>
	<!-- ./Berita -->

	<!-- Partners -->
	<section class="background-grey">
		<div class="container">
			<div class="heading heading-center">
				<h2>Our Partners</h2>
			</div>
			<ul class="grid grid-6-columns"> 
			<?php foreach($partner as $result): ?>
				<li>
					<a data-content="<?php echo e($result->name); ?>" title="<?php echo e($result->name); ?>" data-placement="top" data-toggle="popover" data-container="body" data-original-title="Popover title" data-trigger="hover">
						<img src="<?php echo e($result->imagedir); ?>" title="<?php echo e($result->name); ?>">
					</a>
				</li>
            <?php endforeach; ?>
			</ul>
		</div>
	</section>
	<!-- ./Partners -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>