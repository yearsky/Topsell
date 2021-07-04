@extends('website.template')
@section('title')
	OUR TESTIMONIAL
@endsection



@section('content')
<div id="core" class="core-bg-1">

	<!-- PAGE HEADER : begin -->
	<div id="page-header">
		<div class="container">
			<h1>Our Testimonial</h1>
			<ul class="breadcrumbs">
				<li><a href="{{base_url()}}">Home</a></li>
				<li>Testimonial</li>
			</ul>
		</div>
	</div>
	<!-- PAGE HEADER : begin -->

	<div class="container">

		<!-- PAGE CONTENT : begin -->
		<div id="page-content">
		<div class="c-testimonial-list m-paginated">
			<div class="container">
				<div class="testimonial-list-inner">
					@foreach($testimoni as $result)
					<div class="testimonial-list-item">

						<!-- TESTIMONIAL : begin -->
						<div class="c-testimonial m-has-portrait">
							<div class="testimonial-inner">
								<div class="hidden-xs">
									<p class="testimonial-portrait"><span><img src="{{$result->imagedir}}" alt=""></span></p>
									<blockquote>
										<p>{{read_more($result->description,150)}} <a href="{{$result->url}}"><b>Read More</b></a> </p>
										<footer><strong>{{$result->name}}</strong>, Our Customer</footer>
									</blockquote>
								</div>
								<div class="visible-xs text-center">
									<p class="testimonial-portrait margin-center" style="width:150px; height:150px; margin:auto;position: initial;">
										<span style="width: 100%;"><img src="{{$result->imagedir}}" alt="" ></span>
									</p>
									<br><br>
									<blockquote>
										<p>{{read_more($result->description,150)}} <a href="{{$result->url}}"><b>Read More</b></a> </p>
										<footer><strong>{{$result->name}}</strong>, Our Customer</footer>
									</blockquote>
								</div>
							</div>
						</div>
						<!-- TESTIMONIAL : end -->

					</div>
					@endforeach
				</div>
			</div>
		</div>
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