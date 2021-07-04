@extends('website.template')
@section('title')
	@if($ctrl->input->get('q'))
		YOU ARE SEARCHING PRODUCT LIKE '{{$attr_name}}'
	@else
		OUR PRODUCT - {{$config->name}}
		@if(isset($selected_category))
			, CATEGORY {{$selected_category->name}}
		@endif
	@endif
@endsection

@section('css')
<link rel="stylesheet" type="text/css" href="{{base_url('admin_assets/css/aksa.css')}}">
@endsection

@section('content')
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Product</h1>

	@if($ctrl->input->get('q'))
		<span>YOU ARE SEARCHING PRODUCT LIKE '{{$attr_name}}'</span>
				
	@else
		@if(isset($selected_category))
		<span>{{$selected_category->name}}</span>
		@endif
	@endif
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<div class="post-content post-4-columns">
			@if(count($product)>0)
				@foreach($product as $result)

				<div class="post-item">
					<div class="post-image">
						<a href="{{$result->url}}"><img src="{{$result->imagedir}}" title="{{$result->name}}"></a>
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h4 class="text-center"><a href="{{$result->url}}">{{$result->name}}</a></h4>
						</div>
					</div>
				</div>
				@endforeach
			@else
				Opps! Sorry There's No Product
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