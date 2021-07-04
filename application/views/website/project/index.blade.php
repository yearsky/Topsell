@extends('website.template')
@section('title')
	OUR PROJECT - {{$config->name}}
@endsection

@section('content')
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">Project</h1>
			</div>
		</div>
	</div>

	<section class="m-b-0 p-b-0">
		<div class="container">
			<div class="post-content post-4-columns">
				@foreach($project as $result)
				<div class="post-item">
					<div class="post-image">
                	@foreach($result->gallery as $image)
						<a href="{{$result->url}}"><img src="{{$image->imagedir}}" title="{{$result->name}}"></a>
                    	@break
                    @endforeach
					</div>
					<div class="post-content-details">
						<div class="post-title">
							<h4 class="text-center"><a href="{{$result->url}}">{{$result->name}}</a></h4>
						</div>
						<div class="post-description text-justify">
						<p>{{$result->description_sort}}</p>
						</div>
					</div>
				</div>
				@endforeach
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