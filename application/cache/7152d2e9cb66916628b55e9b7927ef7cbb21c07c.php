<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $__env->yieldContent('title',$seo->title); ?></title>
<?php echo $__env->yieldContent('meta','<meta name="keywords" content="'.$seo->keyword.'">
<meta name="description" content="'.$seo->description.'">
<meta name="author" content="'.$config->name.'">
<meta property="og:image" content="'.$seo->imagedir.'">'); ?>

<link rel="icon" href="<?php echo e($config->icondir); ?>" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo e($config->icondir); ?>" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/animateit/animate.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/owlcarousel/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/magnific-popup/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/theme-base.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/theme-elements.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/responsive.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/color-variations/red.css" media="screen" title="red">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/google-fonts.css">
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/vendor/rs-plugin/css/settings.css" media="all">

<!-- config -->
<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('admin_assets')); ?>/css/aksa.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!-- end config -->

<link rel="stylesheet" type="text/css" href="<?php echo e(base_url('assets')); ?>/css/custom.css" media="screen">
<script type="text/javascript" src="<?php echo e(base_url('assets')); ?>/vendor/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url('assets')); ?>/vendor/plugins-compressed.js"></script>

<?php echo $__env->yieldContent('styles'); ?>
</head>

<body class="wide">
  <div class="wrapper">
    <!-- Header -->
    <header id="header" class="header-light header-navigation-light header-fullwidth">
      <div id="header-wrap">
        <div class="container">
          <!-- TopSell Logo -->
          <div id="logo">
            <a href="<?php echo e(base_url()); ?>"  class="logo" data-dark-logo="<?php echo e($config->logodir); ?>">
              <img src="<?php echo e($config->logodir); ?>" alt="<?php echo e($config->name); ?>" >
            </a>
          </div>
          <!-- ./TopSell Logo -->

          <!-- Mobile Menu -->
          <div class="nav-main-menu-responsive">
            <button class="lines-button x">
              <span class="lines"></span>
            </button>
          </div>
          <!-- ./Mobile Menu -->
          <!-- Navigation -->
          <div class="navbar-collapse collapse main-menu-collapse navigation-wrap">
            <div class="container">
              <nav id="mainMenu" class="main-menu mega-menu">
                <ul class="main-menu nav nav-pills">

                <?php foreach($menupengunjung as $menus): ?>
                  <?php if(count($menus->submenupengunjung) !=0): ?>
                  <li class="dropdown">
                    <a href="<?php echo e(base_url().''.$menus->link); ?>" class="<?php echo e(match($menu,$menus->menu,'active')); ?>">
                    <?php echo e($menus->judul); ?> <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <?php foreach($menus->submenupengunjung->where('aktif','0') as $sub): ?>
                      <li>
                      <?php if($sub->id =='8'): ?>
                      <a href="<?php echo e($sub->link); ?>" target="_blank"><?php echo e($sub->judul); ?>

                      <?php else: ?>
                      <a href="<?php echo e(base_url().''.$sub->link); ?>"><?php echo e($sub->judul); ?>

                      <?php endif; ?>
                      </a>
                      </li>
                      <?php endforeach; ?>
                    </ul>
                  </li>
                  <?php else: ?>
                  <li><a href="<?php echo e(base_url().''.$menus->link); ?>"><?php echo e($menus->judul); ?></a></li>
                  <?php endif; ?>
                <?php endforeach; ?>

                </ul>
              </nav>
            </div>
          </div>
          <!-- ./Navigation -->
        </div>
      </div>
    </header>
<!-- HEADER : end -->

  <?php echo $__env->yieldContent('content'); ?>
  <!-- BOTTOM PANEL : end -->
    <!-- Footer -->
    <footer class="background-dark text-grey" id="footer">
      <div class="footer-content">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="widget clearfix widget-contact-us">                
                <img src="<?php echo e($config->logowhitedir); ?>" title="<?php echo e($config->name); ?>" alt="<?php echo e($config->name); ?>" class="img-responsive">
              </div>
            </div>
            <div class="col-md-3">
              <div class="widget clearfix widget-contact-us" style="background-image: url('<?php echo e(base_url()); ?>images/website/world-map.png'); background-position: 50% 55px; background-repeat: no-repeat">
                <h4 class="widget-title text-uppercase">Contact Us</h4>
                <ul class="list-large list-icons">
                  <li><i class="fa fa-envelope"></i> <?php echo e($config->email); ?></li>
                  <li><i class="fa fa-map-marker"></i> <?php echo e($config->address); ?></li>
                  <li><i class="fa fa-phone"></i> <?php echo e($config->contact); ?></li>
                </ul>
              </div>
            </div>

            <div class="col-md-3 height-col-md-footer">
              <div class="widget clearfix widget-newsletter">
                <h4>Newsletter</h4>
                <form id="widget-subscribe-form" action="<?php echo e(base_url('main/subscribe')); ?>" role="form" class="form-inline">
                  <p style="margin:0;">Subscribe to our Newsletter</p>
                  <div class="input-group">
                    <!-- <span class="input-group-addon"><i class="fa fa-paper-plane"></i></span> -->
                    <input type="email" name="email" class="form-control required email" placeholder="Enter your Email" required>
                    <span class="input-group-btn">
                      <button type="submit" id="widget-subscribe-submit-button" class="btn btn-white">Subscribe</button>
                    </span>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-md-3 height-col-md-footer">
              <div class="widget clearfix widget-newsletter">
                <h4>Visitor Statistics</h4>
                <ul class="list-large">
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-1.png" style="height:21px;">  Hari Ini    : <?php echo e($pengunjung); ?> Orang </li>
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-2.png" style="height:21px;"> Kemarin     : <?php echo e($kemarin); ?> Orang</li>
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-3.png" style="height:21px;"> Bulan Ini   : <?php echo e($perbulan); ?> Orang</li>
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-4.png" style="height:21px;"> Tahun Ini   : <?php echo e($pertahun); ?> Orang</li>
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-5.png" style="height:21px;"> Total       : <?php echo e($total); ?> Orang</li>
            <li style="margin: 5px 2px;"><img src="<?php echo e(base_url()); ?>images/website/pusat-grosir-6.png" style="height:21px;"> Now Online  : <?php echo e($online); ?> Orang</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copyright-content">
        <div class="container">
          <div class="row">
            <div class="copyright-text col-md-6 col-sm-12 col-xs-12">
              &copy; 2017. Developed by <a href="http://aksamedia.co.id" target="_blank">Jasa Pembuatan Website</a>.
            </div>
            <div class="col-md-6">
              <div class="social-icons">
                <ul>
                <?php foreach($sosmed as $result): ?>
                  <li class="social-<?php echo e($result->type); ?>"> <a href="<?php echo e($result->url); ?>" target="_blank" title="<?php echo e($result->name); ?>">
                    <i class="fa fa-<?php echo e($result->type); ?>"></i></a>
                  </li>
                <?php endforeach; ?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- ./Footer --> 
    <div class="call-to-action">
      <ul>
        <?php if(!empty($config->phone)): ?>
        <li>
          <a href="tel://<?php echo e($config->phone); ?>">
            <i class="fa fa-phone"></i>
            <span>Phone</span>
          </a>
        </li>
        <?php endif; ?>
        <?php if(!empty($config->whatsapp)): ?>
        <li>
          <a href="https://api.whatsapp.com/send?phone=<?php echo e($config->whatsapp); ?>&amp;text=Hallo">
            <i class="fa fa-whatsapp"></i>
            <span>Whatsapp</span>
          </a>
        </li>
        <?php endif; ?>
        <?php if(!empty($config->bbm)): ?>
        <li>
          <a href="bbmi:<?php echo e($config->bbm); ?>" target="_blank">
            <i class="fa fa-comments"></i>
            <span>BBM</span>
          </a>
        </li>
        <?php endif; ?>
        <?php if(!empty($config->email)): ?>
        <li>
          <a href="mailto:<?php echo e($config->email); ?>?Subject=Hallo" target="_top">
            <i class="fa fa-envelope"></i>
            <span>Email</span>
          </a>
        </li>
        <?php endif; ?>    
        <?php if(!empty($config->gmap_query)): ?>
        <li>
          <a href="https://www.google.com/maps/embed/v1/place?key=AIzaSyBy_G0H8GDS521QaVAYPk_pinqKLqRdj3M&q=<?php echo e($config->gmap_query); ?>" target="_blank">
            <i class="fa fa-map-marker"></i>
            <span>Map</span>
          </a>
        </li>
        <?php endif; ?>     
      </ul>
    </div>
  </div>
<!-- JavaScript --> 
  <a class="gototop gototop-button" href="#"><i class="fa fa-chevron-up"></i></a>
  
  <script type="text/javascript" src="<?php echo e(base_url('assets')); ?>/js/theme-functions.js"></script>
  <script type="text/javascript" src="<?php echo e(base_url('admin_assets')); ?>/js/aksa/aksa-js.js"></script>

  <!-- Facebook Pixel-->
  <?php if(!empty($seo->fbpixel)): ?>
  <?php echo $seo->fbpixel; ?>

  <?php endif; ?>

  <!-- google analytics-->
  <?php if(!empty($seo->analytic)): ?>
  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', '<?php echo e($seo->analytic); ?>', 'auto');
  ga('send', 'pageview',location.pathname);
  ga('require', 'ecommerce');
  </script>
  <?php endif; ?>
<?php echo $__env->yieldContent('script'); ?>
</body>
</html>