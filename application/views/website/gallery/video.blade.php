@extends('website.template')
@section('title')
	GALLERY VIDEO - {{$config->name}}
@endsection

@section('styles')
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.css">
@endsection

@section('script')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.js"></script>
<script type="text/javascript">
	jQuery("a[rel=group]").click(function() {
		    jQuery.fancybox({
		            'padding'       : 0,
		            'autoScale'     : false,
		            'transitionIn'  : 'none',
		            'transitionOut' : 'none',
		            'title'         : this.title,
		            'width'     	: 680,
		            'height'        : 495,
		            'href'          : this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
		            'type'          : 'swf',
		            'swf'           : {
		                 'wmode'        : 'transparent',
		                'allowfullscreen'   : 'true'
		            }
		        });

		    return false;
		});
</script>
@endsection

@section('content')
<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">Gallery</h1>
			<span>video</span>
		</div>
	</div>
</div>

	<section class="content">
		<div class="container">
			<div class="row">
				@foreach($total as $result)
                <div class="col-md-4 col-sm-4 col-xs-12">
                   <div class="image-box text-center">  
                        <a href="{{$result->video}}" rel="group" title="{{$result->title}}">
                            <img src="{{youtube_preview($result->video)}}">
                            <div class="youtube-play"><span><i class="fa fa-play"></i></span></div>
                        </a>
                            <span>{{read_more($result->name,40)}}</span>
                    </div>
                </div>
				@endforeach
			</div>
		</div>
	</section>

	<!-- 	<section class="content">
			<div class="container">
				<div class="post-content post-3-columns">
					@foreach($total as $result)
					<div class="post-item">
						<div class="post-video">
							<iframe src="https://player.vimeo.com/video/56962340" width="368" height="244"></iframe>
						</div>
						<div class="post-content-details">
							<div class="post-title">
								<h3><a href="#">Video Post Example</a></h3>
							</div>
							<div class="post-info">
								<span class="post-author">Admin</span>
								<span class="post-category">in <a href="#">Category</a></span>
							</div>
							<div class="post-description">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="post-info">
									<a href="event-post.html" class="read-more">Read More <i class="fa fa-long-arrow-right"></i></a>
								</div>
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
		</section> -->

@endsection