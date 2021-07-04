@extends('website.template')
@section('title')
	EVENT - {{$config->name}}
@endsection

@section('content')

<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">EVENT</h1>
		</div>
	</div>
</div>

<section class="content">
	<div class="container">
		<div class="post-content post-2-columns">
		@if(count($event)>0)
			@foreach($event as $result)
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
						<span class="post-category">in <a href="#">{{ucwords($result->type)}}</a></span>
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
				</div>					
			</div>
			@endforeach
		@else
		Opps! Sorry There's No Event
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


@section('script')

@endsection