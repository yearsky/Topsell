@extends('website.template')
@section('title')
	{{$promo->name}}
@endsection

@section('meta')
 <meta name="author" content="{{$config->name}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$promo->imagedir}}">
<meta name="keywords" content="{{$seo->keyword}} , promo">
<meta name="description" content="{{read_more($promo->description,200)}}">

@endsection


@section('styles')
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />

<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
@endsection

@section('content')
<div id="core">

	<!-- PAGE HEADER : begin -->
	<div id="page-header" style="margin-bottom: 40px;">
		<div class="container">
			<h1>{{$promo->name}}</h1>
			<ul class="breadcrumbs">
				<li><a href="{{base_url()}}">Home</a></li>
				<li><a href="{{base_url('main/promo')}}">Promo</a></li>
				<li>{{$promo->name}}</li>
			</ul>
		</div>
	</div>
	<!-- PAGE HEADER : begin -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<!-- PAGE CONTENT : begin -->
				<div id="page-content">

					<!-- BLOG DETAIL : begin -->
					<div class="blog-detail">

						<!-- IMAGE ARTICLE : begin -->
						<article class="image">

							<!-- ARTICLE IMAGE : begin -->
							<div class="article-image">
								<img src="{{$promo->imagedir}}" alt="">
							</div>
							<div class="shareIcons"></div>
							<div class="gap-sm"></div>
							<!-- ARTICLE IMAGE : end -->

							<!-- ARTICLE CONTENT : begin -->
							<div class="article-content various-content">
								{!! $promo->description !!}
							</div>
							<!-- ARTICLE CONTENT : end -->
							<div class="gap-sm"></div>
							<div class="shareIcons"></div>
							<div class="gap-sm"></div>
							<!-- ARTICLE FOOTER : begin -->
							<footer class="article-footer">
								<ul class="article-info">
									<li class="date">{{tgl_indo($promo->created_at)}}</li>
									<li class="author">{{$config->name}}</li>
								</ul>
							</footer>
							<!-- ARTICLE FOOTER : end -->

						</article>
						<!-- ARTICLE AUTHOR : end -->
						<!-- ARTICLE RELATED : end -->

						<!-- ARTICLE COMMENTS : begin -->
						<div class="article-comments">

							<h2 class="heading-2 m-small">Comments Event</h2>

							<div id="disqus_thread"></div>
							<!-- COMMENT FORM : end -->

						</div>
						<!-- ARTICLE COMMENTS : end -->

					</div>
					<!-- BLOG DETAIL : end -->

				</div>
				<!-- PAGE CONTENT : end -->

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

var disqus_config = function () {
this.page.url = '{{$promo->url}}';  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = {{$promo->id}}; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
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