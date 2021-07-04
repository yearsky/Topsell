@extends('website.template')
@section('title')
	Career - {{$config->name}}
@endsection
	
@section('content')
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Career</h1>
			</div>
		</div>
	</div>

		<!-- Blog Post -->
		<section class="content">
			<div class="container">
				<div class="post-content post-thumbnail col-md-9">

				@foreach($job as $result)
					<div class="post-item">
						<div class="post-image">
							<a href="#"><img src="{{$result->imagedir}}" title="{{$result->judul}}"></a>
						</div>
						<div class="post-content-details">
							<div class="post-title">
								<h3><a href="#">{{$result->judul}}</a></h3>
							</div>
							<div class="post-info">
								<span class="post-author">Admin, </span>
								<span class="post-date-day">{{tgl_indo($result->created_at)}}</span>
							</div>
							<div class="post-description">
								{!! $result->deskripsi !!}
							</div>
						</div>
					</div>
				@endforeach
				</div>
				<div class="sidebar col-md-3">
				@include('website.sidebar')
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