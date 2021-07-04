@extends('website.template')
@section('title')
	{{$news->name}}
@endsection

@section('meta')
 <meta name="author" content="{{$config->name}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$news->imagedir}}">
<meta name="keywords" content="{{$news->category->name }} , {{$tag_txt}}">
<meta name="description" content="{{read_more($news->description,170)}}">
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
				<h1 class="text-uppercase text-medium">NEWS</h1>
				<span>{{$news->name}}</span>
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
							<a href="#"><img src="{{$news->imagedir}}"></a>
						</div>
						<div class="post-content-details">
							<div class="post-title">
								<h2>{{$news->name}}</h2>
							</div>
							<div class="post-info">
								<span class="post-author">Admin</span>
								<span class="post-category">in <a href="{{$news->category->url}}">{{$news->category->name}}</a></span>
							</div>
							<div class="post-description">
								{!! $news->description !!}
							</div>
						</div>
						<div class="post-meta">
							<div class="post-date">
								<span class="post-date-day">tanggal {{tgl_indo($news->created_at)}}</span>
							</div>
						</div>
						<div id="shareIcons"></div>
					</div>
					<div id="comments" class="comments">
						<div id="disqus_thread"></div>
					</div>
				</div>
				<div class="sidebar sidebar-modern col-md-3">
				@include('website.sidebar')
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Post -->
					
@endsection

@section('script')
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>
 $("#shareIcons").jsSocials({
    showLabel: false,
    showCount: false,
      shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
  });

	var disqus_config = function () {
	this.page.url = '{{$news->url}}';  // Replace PAGE_URL with your page's canonical URL variable
	this.page.identifier = {{$news->id}}; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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
@endsection