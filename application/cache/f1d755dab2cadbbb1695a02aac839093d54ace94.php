<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo $__env->yieldContent('title'); ?></title>
	<link rel="icon" href="<?php echo e($config->icondir); ?>">
	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/icons/fontawesome/styles.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/colors.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
	<link href="<?php echo e(base_url()); ?>admin_assets/css/custom.css" rel="stylesheet" type="text/css">

	<?php echo $__env->yieldContent('style'); ?>
	<!-- /global stylesheets -->
	 <style type="text/css">
	 	.text-readmore {
			overflow: hidden;
		   	text-overflow: ellipsis;
		   	display: -webkit-box;
		   	line-height: 16px;     
		   	max-height: 16px;      
		   	-webkit-line-clamp: 1; 
		   	-webkit-box-orient: vertical;
		}
		
	    .map-ku {
	        border-radius: 4px;
	        border:1px solid#ddd;
	        overflow: hidden;
	    }

	    .map-ku input {
	        margin-top: 10px;
	        width: 300px;
	        height: 34px;
	    }
	    .margin-center {
	    	float:none;
	    	margin-left: auto;
	    	margin-right: auto;
	    }
	    .gap {
	    	height: 30px;
	    }

	    .gap-md {
	    	height: 15px;
	    }

	     .gap-xs {
	    	height: 5px;
	    }

	    .thumbnail .thumb img.product {
	    	object-fit: cover;
	    	height: 257px;
	    }

	    tr.active-ku {
	    	background-color: #ffe7b5 !important;
	    }

	    .red-row {
	    	    background: #ffe5e5 !important;
	    }
    </style>
	<!-- Core JS files -->

	<!-- /theme JS files -->

</head>

<body class="navbar-top">

	<!-- Main navbar -->
	<div class="navbar navbar-default navbar-fixed-top header-highlight">
		<div class="navbar-header" >
			<a class="navbar-brand" href="index.html" style="color:#fff;line-height:25px">
				<i class="icon-reading"></i> &nbsp;&nbsp;WEBSITE MANAGEMENT
			</a>
			<ul class="nav navbar-nav visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
				<li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>

		</div>

		<div class="navbar-collapse collapse" id="navbar-mobile">
			<ul class="nav navbar-nav">
				<li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>

			<p class="navbar-text"><span class="label bg-primary"><a href="<?php echo e(base_url()); ?>" target="_blank" style="color: #fff">Visit Site </a>  </span></p>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-mail5"></i>
						<span class="visible-xs-inline-block position-right">Pemberitahuan</span>
						<span class="badge bg-warning-400"><?php echo e($notif_total); ?></span>
					</a>

					<div class="dropdown-menu dropdown-content width-500">
						<div class="dropdown-content-heading">
							Pemberitahuan
							<ul class="icons-list">
								<li><a href="#"><i class="icon-eye2"></i></a></li>
							</ul>
						</div>

						<ul class="media-list dropdown-content-body">
							<?php if($notif_total<=0): ?>
							<li class="media">
								<span class="text-muted">Opss! Tidak Ada Pemberitahuan</span>
							</li>	
							<?php endif; ?>


							<?php foreach($notif_inbox as $key => $result): ?>
							<li class="media">
								<div class="media-left">
									 <span class="label bg-danger label-icon"><i class=" icon-envelope"></i></span>
								</div>
								<div class="media-body">
									<a href="<?php echo e(base_url('superuser/inbox/detail/'.$result->id)); ?>" class="media-heading">
										<span class="text-semibold text-readmore"><?php echo e(ucwords(read_more($result->name,50))); ?></span>
										<span class="media-annotation pull-right text-size-small">
											<?php echo e(tgl_indo($result->created_at)); ?>

										</span>
									</a>
									<span class="text-muted">Anda Mempunyai Pesan Baru !</span>
								</div>
							</li>
							<?php endforeach; ?>

							<?php foreach($notif_pricelist as $key => $result): ?>
							<li class="media">
								<div class="media-left">
									 <span class="label bg-pink label-icon"><i class=" icon-price-tags"></i></span>
								</div>
								<div class="media-body">
									<a href="<?php echo e(base_url('superuser/pricelist')); ?>" class="media-heading">
										<span class="text-semibold text-readmore"><?php echo e(ucwords(read_more($result->name,50))); ?></span>
										<span class="media-annotation pull-right text-size-small">
											<?php echo e(tgl_indo($result->created_at)); ?>

										</span>
									</a>
									<span class="text-muted">Pengunduh Baru Price List Anda!</span>
								</div>
							</li>
							<?php endforeach; ?>

						</ul>

						<div class="dropdown-content-footer">
							<a href="#" data-popup="tooltip" title="All messages"><i class="icon-menu display-block"></i></a>
						</div>
					</div>
				</li>

				<li class="dropdown dropdown-user">
					<a class="dropdown-toggle" data-toggle="dropdown">
						<img src="<?php echo e($authmain->imagedir); ?>" alt="" style="width: 30px;height: 30px;object-fit: cover;">
						<span><?php echo e(ucwords(read_more($authmain->name,30))); ?></span>
						<i class="caret"></i>
					</a>

					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="#"><i class="icon-cog5"></i> Pengaturan Akun</a></li>
						<li><a href="<?php echo e(base_url()); ?>auth/signout"><i class="icon-switch2"></i> Keluar Sistem</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			<div class="sidebar sidebar-main">
				<div class="sidebar-content">

					<!-- User menu -->
					<div class="sidebar-user">
						<div class="category-content">
							<div class="media">
								<a href="#" class="media-left"><img src="<?php echo e($authmain->imagedir); ?>" class="img-circle img-sm" title="<?php echo e($authmain->name); ?>"></a>
								<div class="media-body">
									<span class="media-heading text-semibold"><?php echo e(ucwords(read_more($authmain->name,30))); ?></span>
									<div class="text-size-mini text-muted">
										<i class="icon-key text-size-small"></i> &nbsp;Administrator
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- /user menu -->


					<!-- Main navigation -->
					<div class="sidebar-category sidebar-category-visible">
						<div class="category-content no-padding">
							<ul class="navigation navigation-main navigation-accordion">

								<!-- Main -->
								<li class="navigation-header"><span>Menu Utama</span> <i class="icon-menu" title="Menu Utama"></i></li>
								<li class="<?php echo e(match($menu,'dashboard','active')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/"><i class="icon-home4"></i> <span>Selamat Datang</span></a>
								</li>
								<li class="<?php echo e(match($menu,'blog','active')); ?> <?php echo e(mineAccess($privileges,'blog')); ?>">
									<a href="#"><i class="icon-magazine"></i> <span>Blog</span></a>
									<ul>
										<li><a href="<?php echo e(base_url()); ?>superuser/blog/create">Tambah Blog</a></li>
										<li><a href="<?php echo e(base_url()); ?>superuser/blog">Daftar Blog</a></li>
										<li><a href="<?php echo e(base_url()); ?>superuser/categoryblog">Kategori Blog</a></li>
										<li><a href="<?php echo e(base_url()); ?>superuser/tag">Tag Blog</a></li>
									</ul>
								</li>

								<li class="<?php echo e(match($menu,'service','active')); ?> <?php echo e(mineAccess($privileges,'service')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/service"><i class="icon-archive"></i> <span>Service</span></a>
								</li>

								<li class="<?php echo e(match($menu,'event','active')); ?> <?php echo e(mineAccess($privileges,'event')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/event"><i class="icon-price-tag"></i> <span>Event</span></a>
								</li>
								<!-- 
								<li class="<?php echo e(match($menu,'testimoni','active')); ?> <?php echo e(mineAccess($privileges,'testimoni')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/testimoni"><i class="icon-comment-discussion"></i> <span>Testimoni</span></a>
								</li><li class="<?php echo e(match($menu,'pricelist','active')); ?> <?php echo e(mineAccess($privileges,'pricelist')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/pricelist"><i class="icon-price-tags"></i> <span>Pricelist</span></a>
								</li> -->
								<li class="<?php echo e(match($menu,'gallery','active')); ?> <?php echo e(mineAccess($privileges,'gallery')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/gallery"><i class="icon-images3"></i> <span>Gallery</span></a>
								</li>

								<li class="<?php echo e(match($menu,'slider','active')); ?> <?php echo e(mineAccess($privileges,'slider')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/slider"><i class="icon-image-compare"></i> <span>Slider</span></a>
								</li>

								<li class="<?php echo e(match($menu,'job','active')); ?> <?php echo e(mineAccess($privileges,'job')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/job"><i class="icon-briefcase"></i> <span>Karir</span></a>
								</li>
								<li class="<?php echo e(match($menu,'product','active')); ?>  <?php echo e(mineAccess($privileges,'product')); ?>">
									<a href="#"><i class="icon-package"></i> <span>Produk</span></a>
									<ul>
										<li><a href="<?php echo e(base_url()); ?>superuser/product/create">Tambah Produk</a></li>
										<li><a href="<?php echo e(base_url()); ?>superuser/product">Daftar Produk</a></li>
										<li><a href="<?php echo e(base_url()); ?>superuser/categoryproduct">Kategori Produk</a></li>
									</ul>
								</li>
								<li class="<?php echo e(match($menu,'project','active')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/project"><i class="icon-stack"></i> <span>Project</span></a>
								</li>
								<li class="<?php echo e(match($menu,'halaman','active')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/halamanstatis"><i class="icon-shield-notice"></i> <span>Halaman Statis</span></a>
								</li>

								<li class="<?php echo e(match($menu,'partnership','active')); ?> <?php echo e(mineAccess($privileges,'partnership')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/partnership">
										<i class=" icon-thumbs-up2"></i> <span>Partnership</span>
									</a>
								</li>

								<li class="<?php echo e(match($menu,'inbox','active')); ?> <?php echo e(mineAccess($privileges,'inbox')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/inbox">
										<i class="icon-envelop5"></i> <span>Kotak Masuk</span>
										<?php if(count($notif_inbox)>=1): ?>
											<span class="badge badge-warning"><?php echo e(count($notif_inbox)); ?></span>
										<?php endif; ?>
									</a>
								</li>

								<li class="<?php echo e(match($menu,'sosmed','active')); ?> <?php echo e(mineAccess($privileges,'sosmed')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/sosmed"><i class="icon-earth"></i> <span>Sosial Media</span></a>
								</li>

								<li class="<?php echo e(match($menu,'seo','active')); ?> <?php echo e(mineAccess($privileges,'seo')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/seo"><i class="icon-clipboard5"></i> <span>SEO Website</span></a>
								</li>

								<li class="navigation-header"><span>PENGATURAN</span> <i class="icon-menu" title="Menu Lainnya"></i></li>

								<li class="<?php echo e(match($menu,'auth','active')); ?> <?php echo e(mineAccess($privileges,'auth')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/auth"><i class="icon-user-tie"></i> <span>Akun Administrator</span></a>
								</li>

								<li class="<?php echo e(match($menu,'config','active')); ?> <?php echo e(mineAccess($privileges,'config')); ?>">
									<a href="<?php echo e(base_url()); ?>superuser/config"><i class="icon-gear"></i> <span>Pengaturan</span></a>
								</li>

								<li>
									<a href="<?php echo e(base_url()); ?>auth/signout"><i class="fa fa-sign-out"></i> <span>Keluar Sistem</span></a>
								</li>
								<!-- Layout -->
								<!-- /page kits -->
							</ul>
						</div>
					</div>
					<!-- /main navigation -->

				</div>
			</div>
			<!-- /main sidebar -->
			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<?php echo $__env->yieldContent('content'); ?>
				<!-- /content area -->


			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>

	<?php echo $__env->yieldContent('footer'); ?>
	<!-- /page container -->
	<!-- FOOTER JS -->
	<script type="text/javascript">var base_url = "<?php echo e(base_url()); ?>"</script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/visualization/d3/d3.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/pickers/daterangepicker.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/extension_blockui.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/components_popups.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/media/fancybox.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.min.js"></script>
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/core/app.js"></script>
	
	
	<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/aksa/aksa-js.js"></script>
	<?php echo $__env->yieldContent('script'); ?>
	<script type="text/javascript">
	 $('[data-popup=lightbox]').fancybox({
        padding: 3
    });


	 function deleteIt(that){
		swal({   
			title: "Apa Anda Yakin ?",   
			text: "Anda Akan Menghapus Data Ini",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "Ya, Hapus Data!",   
			closeOnConfirm: false 
		}, function(){   
			swal({   
					title: "Deleted",   
					text: "Data Anda Telah Di Hapus",   
					type: "success"
			},function(){
				redirect($(that).attr('data-url'));
			}); 
			
		});	
	}

	function showTab(that){
		var element = 'a[href="'+$(that).attr('element-id')+'"]';
		$(element).tab('show');
	}

	</script>
</body>
</html>