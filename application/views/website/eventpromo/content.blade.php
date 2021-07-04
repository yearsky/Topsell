@extends('website.template')
@section('title')
	{{$event->name}}
@endsection

@section('meta')
 <meta name="author" content="{{$config->name}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$event->imagedir}}">
<meta name="keywords" content="{{$seo->keyword}} , promo">
<meta name="description" content="{{read_more($event->description,200)}}">
@endsection

@section('styles')
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
@endsection

@section('content')
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">EVENT</h1>
			<span>{{$event->name}}</span>
		</div>
	</div>
</div>	

<!-- Blog Post -->
<section class="content">
	<div class="container">
		<div class="row">
			<div class="post-content post-classic post-content-single col-md-9">
				<div class="post-item">
					<div class="post-image">
						<a href="#"><img src="{{$event->imagedir}}"></a>
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h2>{{$event->name}}</h2>
						</div>
						<div class="post-info">
							<span class="post-author">Admin</span>
							<span class="post-category">in <a href="#">{{$event->type}}</a></span>
						</div>
						<div class="post-description">
							{!! $event->description !!}
						</div>
					</div>
					<div class="post-meta">
						<div class="post-date">
							<span class="post-date-day">tanggal {{tgl_indo($event->created_at)}}</span>
						</div>
					</div>
					<div id="shareIcons"></div>
				</div>
			</div>
			<div class="sidebar sidebar-modern col-md-3">
			@include('website.sidebar')
			</div>
		</div>
	</div>
</section>
@endsection

@section('script')
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>
	$("#shareIcons").jsSocials({
		showLabel: false,
		showCount: false,
        shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
	});
</script>
@endsection