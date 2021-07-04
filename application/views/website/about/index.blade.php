@extends('website.template')
@section('title')
	ABOUT US - {{$seo->title}}
@endsection

@section('styles')
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.css">
<style type="text/css">
    .videoyoutube{
    text-align: center;
        background:linear-gradient(to bottom, #fefefe 0%, #d1d1d1 100%);
        border:1px solid #A8A8A8;
        border-radius:5px;
        margin:20px auto;
        width:90%;
        box-shadow: 1px 30px 30px -26px #818181;
    }
    .video-responsive {
        position: relative;
        padding-bottom: 56.25%;
        height: 0;
        overflow: hidden;
        margin:8px;
    }
    .video-responsive iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border:0;
    }
</style>
@endsection

@section('script')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script type="text/javascript">
    jQuery("a[rel=group]").click(function() {
            jQuery.fancybox({
                    'padding'       : 0,
                    'autoScale'     : false,
                    'transitionIn'  : 'none',
                    'transitionOut' : 'none',
                    'title'         : this.title,
                    'width'         : 853,
                    'height'        : 480,
                    'href'          : this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
                    'type'          : 'swf',
                    'swf'           : {
                         'wmode'        : 'transparent',
                        'allowfullscreen'   : 'true'
                    }
                });

            return false;
        });

    $("#shareIcons").jsSocials({ 
        showLabel: false,
        showCount: false,
        shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
    });

    setTimeout(function(){
        $('.video-youtube').each(function(){
        $(this).replaceWith('<iframe class="video-youtube loader" src="'+$(this).data('src')+'" allowfullscreen="allowfullscreen" height="281" width="500"></iframe>')})
    },5000);
</script>
@endsection

@section('content')
	<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
		<div class="background-overlay"></div>
		<div class="container">
			<div class="page-title col-md-8">
				<h1 class="text-uppercase text-medium">ABOUT</h1>
			</div>
		</div>
	</div>

	<section class="content">
		<div class="container">
			<div class="row">
            <div class="col-md-1">
            </div>
            <div class="post-content post-classic post-content-single col-md-10">
                <div class="post-item">
                	@if (!empty($config->youtube))

                    <div class="videoyoutube">
                        <div class="video-responsive">
                            <div class="video-youtube loader" data-src="{{youtube_iframe($config->youtube)}}"></div>
                        </div>
                    </div>
                    @else
					<div class="post-image">
						<a href="#"><img src="{{$config->imagedir}}" title="{{$config->name}}" class="img-responsive"></a>
					</div>
					@endif

                    <div class="post-content-details">
                        <div class="post-title">
                            <h2>{{$config->name}}</h2>
                        </div>
                        <div class="post-info">
                            <span class="post-autor">Post by: <a href="#">Admin</a></span>
                        </div>
                        <div class="post-description">
                            {!! $config->description !!}
                        </div>
                        <div id="shareIcons"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-1">
            </div>
			</div>
		</div>
	</section>
@endsection