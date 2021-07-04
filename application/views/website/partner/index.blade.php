@extends('website.template')
@section('title')
	PARTNER - {{$config->name}}
@endsection

@section('content')
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Partner</h1>
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<ul class="grid grid-6-columns"> 
			@foreach($partner as $result)
				<li>
					<a data-content="{{$result->name}}" title="{{$result->name}}" data-placement="top" data-toggle="popover" data-container="body" data-original-title="{{$result->name}}" data-trigger="hover">
						<img src="{{$result->imagedir}}">
					</a>
				</li>
            @endforeach
			</ul>
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