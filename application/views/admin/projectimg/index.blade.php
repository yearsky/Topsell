@extends('admin.template')

@section('title')
 Daftar Gallery - {{$config->name}}
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Gallery</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/gallery')}}"><i class="icon-stack2 position-left"></i> Gallery</a></li>
			<li class="active">Data Gallery</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-images3"></i> Daftar</span> Gallery
		<small class="display-block">Ini merupakan daftar gallery yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Gallery Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/gallery/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Gallery Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th>Gambar</th>
                            <th>Gallery</th>
                            <th>Tipe</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($gallery as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
	                        <td>
	                        	@if($result->type=="picture")
		                        <a href="{{$result->imagedir}}" data-popup="lightbox">
			                        <img src="{{$result->imagedir}}" alt="" class="img-rounded img-preview" style="object-fit: cover;width: 100%;height: 70px;">
		                        </a>
		                        @else
		                        <a href="{{$result->video}}" data-popup="lightbox">
			                        <img src="{{youtube_preview($result->video)}}" alt="" class="img-rounded img-preview" style="object-fit: cover;width: 100%;height: 70px;">
		                        </a>
		                        @endif
	                        </td>
	                        <td style="width:500px;">
	                        	<a href="{{base_url('superuser/gallery/update/'.$result->id.'/'.seo($result->title))}}">
	                        		<b>{{ucwords(read_more($result->title,100))}}</b>
	                        	</a><br>
	                        	<span class="text-size-mini">
	                        	Tanggal Publish : {{tgl_indo($result->created_at)}}
	                        	</span><br>
	                        	<span class="text-size-small text-muted">
	                        		{{read_more(strip_tags($result->description),120)}}
	                        	</span>
	                        </td>
	                        <td align="center">
	                        	@if($result->type=="picture")
	                        		<span class="label label-primary">{{$result->type}}</span>
	                        	@else
	                        		<span class="label label-danger">{{$result->type}}</span>
	                        	@endif
	                        </td>
	                      
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="{{base_url('superuser/gallery/update/'.$result->id.'/'.seo($result->title))}}">
												<i class="fa fa-edit"></i> Ubah Gallery
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{base_url('superuser/gallery/deleted/'.$result->id.'/'.seo($result->title))}}">
												<i class="fa fa-trash"></i> Hapus Gallery
											</a>
										</li>
									</ul>
								</div>
	                        </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

@endsection

@section('script')
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/media/fancybox.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_layouts.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/gallery_library.js"></script>
@endsection
