@extends('website.template')
@section('title')
	NEWS - {{$config->name}}
	@if(isset($selected_category))
		, CATEGORY {{$selected_category->name}}
	@endif

	@if(isset($selected_tag))
		, TAG {{$selected_tag->name}}
	@endif
@endsection

@section('content')

<!-- Page Banner -->
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">NEWS</h1>
			@if(isset($selected_category))
			<span>{{$selected_category->name}}</span>
			@endif
			
		</div>
	</div>
</div>
<!-- ./Page Banner -->

<!-- Blog Post -->
<section class="content">
	<div class="container">
		<div class="post-content post-3-columns">
		@if(count($news)>0)
			@foreach($news as $result)
			<div class="post-item">
				<div class="post-image">
					<a href="{{$result->url}}"><img src="{{$result->imagedir}}" title="{{$result->name}}"></a>
				</div>
				<div class="post-content-details">
					<div class="post-title">
						<h3><a href="{{$result->url}}">{{$result->name}}</a></h3>
					</div>
					<div class="post-info">
						<span class="post-author">Admin</span>
						<span class="post-category">in <a href="{{$result->category->url}}">{{$result->category->name}}</a></span>
					</div>
					<div class="post-description">
						<p>{{read_more($result->description,200)}}</p>
						<div class="post-info">
							<a href="{{$result->url}}" class="read-more">Read More <i class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
				<div class="post-meta">
					<div class="post-date">
						<span class="post-date-month">{{tgl_indo($result->created_at)}}</span>
					</div>
					<div class="post-comments">
						<a href="#"><i class="fa fa-comment-o"></i> <span class="post-comments-number">324</span></a>
					</div>
					<div class="post-share">
						<a href="#"><i class="fa fa-share-alt"></i> <span class="post-share-number">10</span></a>
					</div>
				</div>					
			</div>
			@endforeach
		@else
		Opps! Sorry There's No News
		@endif
		</div>

		<div class="row">
			<div class="col-md-12 col-xs-12 col-sm-12 col-lg-12">
				<nav class="text-center">
					<ul class="pagination">
						{!! $pagination !!}
					</ul>
				</nav>
			</div>
		</div>
	</div>
</section>
@endsection