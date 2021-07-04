@extends('website.template')
@section('title')
	Searching '{{$ctrl->input->get('q')}}'
@endsection



@section('content')
<div id="core" class="core-bg-1">

	<!-- PAGE HEADER : begin -->
	<div id="page-header">
		<div class="container">
			<h1>Searching {{$ctrl->input->get('q')}}</h1>
			<ul class="breadcrumbs">
				<li><a href="{{base_url()}}">Home</a></li>
				<li>Search</li>
			</ul>
		</div>
	</div>
	<!-- PAGE HEADER : begin -->

	<div class="container">

				<!-- PAGE CONTENT : begin -->
				<div id="page-content">

					<!-- SEARCH RESULTS : begin -->
					<div class="search-results">

						<!-- SEARCH FORM : begin -->
						<form class="c-search-form" action="{{base_url('main/search')}}" method="get">
							<div class="form-fields">
								<input type="text" name="q" placeholder="Search Something Here" value="{{$ctrl->input->get('q')}}">
								<button class="c-button" type="submit"><i class="fa fa-search"></i></button>
							</div>
						</form>
						<!-- SEARCH FORM : end -->

						<!-- DIVIDER : begin -->
						<hr class="c-divider m-medium">
						<!-- DIVIDER : end -->

						<!-- RESULTS LIST : begin -->
						<ul class="results-list">

							<!-- RESULT ITEM : begin -->
							@foreach($category as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($tag as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($news as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($eventpromo as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($service as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($product as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@foreach($category_product as $result)
							<li>
								<h3 class="item-title">{{$result->name}}</h3>
								<p class="item-link"><a href="{{$result->url}}">{{$result->url}}</a></p>
								<div class="item-text various-content">
									<p>{{read_more($result->description,200)}}</p>
								</div>
							</li>
							@endforeach

							@if(isset($other_gallery))
							<li>
								<h3 class="item-title">Gallery Picture</h3>
								<p class="item-link"><a href="{{base_url('main/gallery/picture')}}">{{base_url('main/gallery/picture')}}</a></p>
								<div class="item-text various-content">
									<p>Our Gallery Picture</p>
								</div>
							</li>
							<li>
								<h3 class="item-title">Gallery Video</h3>
								<p class="item-link"><a href="{{base_url('main/gallery/video')}}">{{base_url('main/gallery/video')}}</a></p>
								<div class="item-text various-content">
									<p>Our Gallery Video</p>
								</div>
							</li>
							@endif

							@if(isset($other_contact))
							<li>
								<h3 class="item-title">CONTACT US</h3>
								<p class="item-link"><a href="{{base_url('main/contact')}}">T{{base_url('main/contact')}}</a></p>
								<div class="item-text various-content">
									<p>Our Information and Contact Us </p>
								</div>
							</li>
							@endif

							@if(isset($other_about))
							<li>
								<h3 class="item-title">ABOUT US</h3>
								<p class="item-link"><a href="{{base_url('main/about')}}">T{{base_url('main/about')}}</a></p>
								<div class="item-text various-content">
									<p>About Us</p>
								</div>
							</li>
							@endif

							@if(isset($other_testimoni))
							<li>
								<h3 class="item-title">TESTIMONIAL</h3>
								<p class="item-link"><a href="{{base_url('main/testimoni')}}">T{{base_url('main/testimoni')}}</a></p>
								<div class="item-text various-content">
									<p>Our Customer Testimonial</p>
								</div>
							</li>
							@endif
						
						</ul>
						<!-- RESULTS LIST : end -->
						<!-- PAGINATION : end -->

					</div>
					<!-- SEARCH RESULTS : end -->

				</div>
				<!-- PAGE CONTENT : end -->

			</div>

</div>

<!-- CORE : end -->

<!-- BOTTOM PANEL : begin -->
<!-- BOTTOM PANEL : end -->
@endsection


@section('script')

@endsection