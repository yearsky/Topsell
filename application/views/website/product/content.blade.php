@extends('website.template')
@section('title')
	{{$product->name}} - {{$config->name}}
@endsection

@section('meta')
<!-- Z -->
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
        <h1 class="text-uppercase text-medium">product</h1>
        <span>{{$product->title}}</span>
      </div>
    </div>
  </div>

  <!-- Blog Post -->
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="post-content post-thumbnail col-md-9">
          <div class="post-item">
            <div class="post-slider">
              <div class="carousel" data-carousel-col="1">
              @foreach($product->images as $image)
                <img src="{{$image->imagedir}}" title="{{$product->name}}">
              @endforeach
              </div>
                <div id="shareIcons"></div>
            </div>
            
            <div class="post-content-details">
              <div class="post-title">
                <h3><a href="#">{{$product->name}}</a></h3>
              </div>
              <div class="post-date">
                <span class="post-date-day">{{tgl_indo($product->created_at)}}</span>
              </div>
              <div class="post-info">
                <span class="post-author">By Admin</span>
                <span class="post-category">in <a href="{{$product->category->url}}">{{$product->category->name}}</a></span>
              </div>
              <div class="post-description">
                {!! $product->description !!}                
              </div>
            </div>
          </div>
        </div>
        <div class="sidebar sidebar-modern col-md-3">
        @include('website.sidebar')
        </div>
      </div>
    </div>
  </section>
@endsection

@section('script')
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.4.0/jssocials.min.js"></script>
<script>
 $("#shareIcons").jsSocials({ 
    showLabel: false,
    showCount: false,
    shares: ["twitter", "facebook", "whatsapp","googleplus","line"]
  });
</script> -->
@endsection