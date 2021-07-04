@extends('website.template')
@section('title')
	{{$service->name}} - {{$seo->title}}
@endsection

@section('meta')
 <meta name="author" content="{{$config->name}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$service->imagedir}}">
<meta name="keywords" content="{{$seo->keyword}} , service">
<meta name="description" content="Our Service , {{read_more($service->description,200)}}">
@endsection

@section('styles')
<!-- <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" /> -->
@endsection

@section('content')
  <div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
    <div class="background-overlay"></div>
    <div class="container">
      <div class="page-title col-md-8">
        <h1 class="text-uppercase text-medium">Service</h1>
        <span>{{$service->name}}</span>
      </div>
    </div>
  </div>

  <!-- Blog Post -->
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="post-content post-classic post-content-single col-md-9">
          <div class="post-item">
            <div class="post-image">
              <a href="#"><img src="{{$service->imagedir}}"></a>
            </div>
            <div class="post-content-details">
              <div class="post-title">
                <h2>{{$service->name}}</h2>
              </div>

              <div class="post-description">
                {!! $service->description !!}
              </div>
                <div id="shareIcons"></div>
            </div>
          </div>
        </div>
        <div class="sidebar sidebar-modern col-md-3">
        @include('website.sidebar')
        </div>
      </div>
    </div>
  </section>
  <!-- Blog Post -->
@endsection

@section('script')
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>
 $("#shareIcons").jsSocials({ 
    showLabel: false,
    showCount: false,
    shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
  });
</script>
@endsection