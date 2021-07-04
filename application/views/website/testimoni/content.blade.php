@extends('website.template')
@section('title')
	Testimonial - {{$testimoni->name}}
@endsection

@section('meta')
 <meta name="author" content="{{$config->name}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$testimoni->imagedir}}">
<meta name="keywords" content="testimoni , bukti lisan">
<meta name="description" content="{{$testimoni->description_sort}}">

@endsection


@section('styles')
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />

<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
@endsection

@section('content')
<div id="core" class="core-bg-1">

	<!-- PAGE HEADER : begin -->
	<div id="page-header">
		<div class="container">
			<h1>{{$testimoni->name}}</h1>
			<ul class="breadcrumbs">
				<li><a href="{{base_url()}}">Home</a></li>
				<li><a href="{{base_url('main/testimoni')}}">Testimonial</a></li>
				<li>{{$testimoni->name}}</li>
			</ul>
		</div>
	</div>
	<!-- PAGE HEADER : begin -->

	<div class="container">
		<div class="row">
			<div class="col-md-8">

				<!-- PAGE CONTENT : begin -->
				<div id="page-content">

					<!-- BLOG DETAIL : begin -->
					<div class="blog-detail">

						<!-- IMAGE ARTICLE : begin -->
						<article class="image">

							<!-- ARTICLE IMAGE : begin -->
							<div class="article-image">
								<img src="{{$testimoni->imagedir}}" alt="">
							</div>
							<div class="shareIcons"></div>
							<div class="gap-sm"></div>
							<!-- ARTICLE IMAGE : end -->

							<!-- ARTICLE CONTENT : begin -->
							<div class="article-content various-content">
								{!! $testimoni->description !!}
							</div>
							<!-- ARTICLE CONTENT : end -->
							<div class="gap-sm"></div>
							<div class="shareIcons"></div>
							<div class="gap-sm"></div>
							<!-- ARTICLE FOOTER : begin -->
							<footer class="article-footer">
								<ul class="article-info">
									<li class="date">{{tgl_indo($testimoni->created_at)}}</li>
									<li class="author">{{$config->name}}</li>
									<li class="categories"><a href="{{base_url('main/testimoni')}}">Testimonial</a></li>
								</ul>
							</footer>
							<!-- ARTICLE FOOTER : end -->

						</article>
						<!-- ARTICLE AUTHOR : end -->
						<!-- ARTICLE COMMENTS : end -->

					</div>
					<!-- BLOG DETAIL : end -->

				</div>
				<!-- PAGE CONTENT : end -->

			</div>
			<div class="col-md-4">

				<!-- SIDEBAR : begin -->
				<aside id="sidebar" style="    background: rgba(255, 255, 255, 0.68);padding: 20px 20px;">
					<!-- SIDEBAR SEARCH : end -->
					<!-- SIDEBAR LINKS : end -->

					<!-- SIDEBAR ARTICLES : begin -->
					<div class="sidebar-widget sidebar-articles">
						<h3 class="widget-title">Lainnya</h3>
						<div class="widget-content">
							<ul>
								@foreach($testimoni_other as $result)
								<li>
									<h4 class="article-title">
										<a href="{{$result->url}}">{{$result->name}}</a>
									</h4>
									<p class="article-date">{{tgl_indo($result->created_at)}}</p>
								</li>
								@endforeach
							</ul>
						</div>
					</div>
					<!-- SIDEBAR ARTICLES : end -->

				</aside>
				<!-- SIDEBAR : end -->

			</div>
		</div>
	</div>

</div>
<!-- CORE : end -->

<!-- BOTTOM PANEL : begin -->
<!-- BOTTOM PANEL : end -->
@endsection


@section('script')
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>

 $(".shareIcons").jsSocials({
      shares: ["twitter", "facebook", "googleplus", "linkedin", "pinterest"]
  });

</script>
@endsection