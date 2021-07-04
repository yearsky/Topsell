@extends('website.template')
@section('title')
	OUR PROMO
	
@endsection



@section('content')
<div id="core">

	<!-- PAGE HEADER : begin -->
	<div id="page-header">
		<div class="container">
			<h1>Event And Promo</h1>
			<ul class="breadcrumbs">
				<li><a href="{{base_url()}}">Home</a></li>
				<li>Promo</li>
				
			</ul>
		</div>
	</div>
	<!-- PAGE HEADER : begin -->

	<div class="container">
		<div class="row">

				<!-- PAGE CONTENT : begin -->
				<div id="page-content">

					<!-- BLOG LIST : begin -->
					@if(count($promo)>0)
					<div class="blog-list">

						@foreach($promo as $result)
						<article class="image col-md-6" style="margin-top: 0px;">

							<!-- ARTICLE IMAGE : begin -->
							<div class="article-image">
								<a href="{{$result->url}}"><img src="{{$result->imagedir}}" alt=""></a>
							</div>
							<!-- ARTICLE IMAGE : end -->

							<!-- ARTICLE HEADER : begin -->
							<header class="article-header">
								<span class="article-date">{{tgl_indo($result->created_at)}}</span>
								<h2 class="article-title"><a href="{{$result->url}}">{{$result->name}}</a></h2>
							</header>
							<!-- ARTICLE HEADER : end -->

							<!-- ARTICLE CONTENT : begin -->
							<div class="article-content various-content">
								<p>{{read_more($result->description,200)}}</p>
							</div>
							<!-- ARTICLE CONTENT : end -->

							<!-- ARTICLE FOOTER : begin -->
							<footer class="article-footer">
								<ul class="article-info">
									<li class="author">{{$config->name}}</li>
								</ul>
								<p class="article-more"><a href="{{$result->url}}" class="c-button">Read More</a></p>
							</footer>
							<!-- ARTICLE FOOTER : end -->

						</article>
						@endforeach
						
						<div class="clearfix"></div>
					</div>
					@else
					Opps! Sorry There's No Promo
					@endif
					<!-- BLOG LIST : end -->

					<!-- PAGINATION : begin -->
					<ul class="c-pagination">
						{!! $pagination !!}
					</ul>
					<!-- PAGINATION : end -->

				</div>
				<!-- PAGE CONTENT : end -->

		</div>
	</div>

</div>
<!-- CORE : end -->

<!-- BOTTOM PANEL : begin -->
<!-- BOTTOM PANEL : end -->
@endsection


@section('script')

@endsection