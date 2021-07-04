@extends('website.template')
@section('title')
	{{$project->title}} - {{$config->name}}
@endsection

@section('meta')
 <meta title="author" content="{{$config->title}}">
<link rel="copyright" href="{{base_url()}}">
<meta property="og:image" content="{{$project->imagedir}}">
<meta title="keywords" content="{{$seo->keyword}} , project">
<meta title="description" content="Our Project , {{read_more($project->description,200)}}">
@endsection

@section('styles')
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials-theme-flat.css" />
@endsection

@section('content')
  <div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
    <div class="background-overlay"></div>
    <div class="container">
      <div class="page-title col-md-8">
        <h1 class="text-uppercase text-medium">Project</h1>
        <span>{{$project->title}}</span>
      </div>
    </div>
  </div>

  <!-- Blog Post -->
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="post-content post-classic post-content-single col-md-9">
          <div class="post-item">

            <div class="post-slider">
              <div class="carousel" data-carousel-col="1">
              @foreach($project->gallery as $image)
                <img src="{{$image->imagedir}}" title="{{$project->name}}">
              @endforeach
              </div>
            </div>
            <div class="post-content-details">
              <div class="post-title">
                <h2>{{$project->title}}</h2>
              </div>

              <div class="post-description">
                {!! $project->description !!}
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