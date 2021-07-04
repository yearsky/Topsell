@extends('website.template')
@section('title')
	OPPS PAGE NOT FOUND
@endsection



@section('content')
<div id="core" class="core-bg-1">

	<div class="container">

		<!-- PAGE CONTENT : begin -->
		<div id="page-content">

			<!-- ERROR 404 : begin -->
			<div class="error-404">

				<!-- ERROR HEADER : begin -->
				<div class="error-header">
					<h1><span>404</span> Sorry, page not found.</h1>
					<p>The page you are looking for is no longer available or has been moved.</p>
				</div>
				<!-- ERROR HEADER : end -->

				<div class="various-content">

					<!-- SEARCH SECTION : begin -->
					<section>
						<h2>Search the site</h2>
						<form class="c-search-form" action="{{base_url('main/search')}}">
							<div class="form-fields">
								<input type="text" placeholder="What to search..." name="q">
								<button class="c-button" type="submit"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</section>
					<!-- SEARCH SECTION : end -->

					<!-- LINKS SECTION : begin -->
					<!-- LINKS SECTION : end -->

				</div>

			</div>
			<!-- ERROR 404 : end -->

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