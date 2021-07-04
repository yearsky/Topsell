@extends('website.template')
@section('title')
	GALLERY PICTURE - {{$config->name}}
@endsection

@section('content')
<!-- Page Banner -->
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">Gallery</h1>
			<span>picture</span>
		</div>
	</div>
</div>
<!-- Gallery -->
<section>
	<div class="container">
		<div id="isotope" class="isotope col-small-margins" data-isotope-mode="masonry" data-isotope-col="4" data-lightbox-type="gallery">
			@foreach($total as $result)
			<div class="isotope-item">
				<div class="effect social-links">
					<img src="{{$result->imagedir}}">
					<div class="image-box-content">
						<p><a href="{{$result->imagedir}}" data-lightbox="gallery-item" title="{{$result->name}}"><i class="fa fa-expand"></i></a></p>
					</div>
				</div>
			</div>
			@endforeach
		</div>
	</div>
</section>
@endsection