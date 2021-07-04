<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sign In As Administrator - {{$config->name}}</title>
	<link rel="icon" href="{{$config->icondir}}">
	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="{{base_url()}}admin_assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="{{base_url()}}admin_assets/css/minified/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="{{base_url()}}admin_assets/css/minified/core.min.css" rel="stylesheet" type="text/css">
	<link href="{{base_url()}}admin_assets/css/minified/components.min.css" rel="stylesheet" type="text/css">
	<link href="{{base_url()}}admin_assets/css/minified/colors.min.css" rel="stylesheet" type="text/css">
	
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/loaders/blockui.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/notifications/pnotify.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/notifications/noty.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/ui/prism.min.js"></script>


	<!-- /core JS files -->


	<!-- Theme JS files -->
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/core/app.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/components_notifications_other.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/extension_blockui.js"></script>
	
	<!-- /theme JS files -->

</head>

<body>

	
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container login-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Simple login form -->
					<form id="form-login">
						<div class="panel login-form">
							<div class="panel-body bg-slate-800 ">
								<div class="text-center">
									<div class="icon-object border-warning-300 text-warning-300"><i class="icon-reading"></i></div>
									<h5 class="content-group">Masuk Sistem Administrator 
										<small class="display-block">Masukkan Username dan Password</small>
									</h5>
								</div>

								<div class="form-group has-feedback has-feedback-left">
									<input type="hidden" name="{{$ctrl->security->get_csrf_token_name()}}" value="{{ $ctrl->security->get_csrf_hash()}}" />
									<input type="username" class="form-control" name="username" placeholder="Username" required>
									<div class="form-control-feedback">
										<i class="icon-user text-slate-300"></i>
									</div>
								</div>

								<div class="form-group has-feedback has-feedback-left">
									<input type="password" class="form-control"  name="password" min="8" placeholder="Password"  required>
									<div class="form-control-feedback">
										<i class="icon-lock2 text-slate-300"></i>
									</div>
								</div>
								<div class="form-group">
									<button type="submit" class="btn bg-success btn-block">Masuk <i class="icon-circle-right2 position-right"></i></button>
								</div>
							</div>
						</div>
					</form>

					<!-- Footer -->
					<div class="footer text-muted">
						&copy; 2016. <a href="{{base_url()}}">{{ucwords($config->name)}}</a> Dari <a href="{{base_url()}}" target="_blank"> Pengembang</a>
					</div>
					<!-- /footer -->

				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->
	<script type="text/javascript">
		var base_url 		= '{{base_url()}}';
	</script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/aksa/aksa-js.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/auth/auth.js"></script>

</body>
</html>
