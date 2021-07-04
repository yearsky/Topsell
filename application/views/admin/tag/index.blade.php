@extends('admin.template')

@section('title')
 Daftar Tag Blog
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Tag Blog</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/tag')}}"><i class="icon-price-tags position-left"></i> Tag Blog</a></li>
			<li class="active">Daftar Tag Blog</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-price-tags"></i> Daftar</span> Tag Blog
		<small class="display-block">Ini merupakan daftar tag blog yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Tag Blog Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/tag/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Tag Blog Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                            <th>Tag</th>
                            <th>Blog</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($tag as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
	                        <td style="width:300px;">
	                        	<a href="{{$result->urlupdate}}">
	                        		<b>{{ucwords(read_more($result->name,30))}}</b>
	                        	</a><br>
	                        	<span class="text-size-mini">
	                        	Tanggal Publish : {{tgl_indo($result->created_at)}}
	                        	</span><br>
	                        	<span class="text-size-small text-muted">
	                        		{{read_more(strip_tags($result->description),30)}}
	                        	</span>
	                        </td>
	                        <td align="center">
	                        	<span class="label label-warning"><i class="icon-magazine"></i> &nbsp;{{count($result->tags)}} Blog</span>
	                        </td>
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
			                    		<li>
											<a href="{{$result->url}}" target="_blank">
												<i class="fa fa-eye"></i> Lihat Tag Blog Website
											</a>
										</li>
										<li>
											<a href="{{$result->urlupdate}}">
												<i class="fa fa-edit"></i> Ubah Tag
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{$result->urldelete}}">
												<i class="fa fa-trash"></i> Hapus Tag
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
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/default_datatable.js"></script>
@endsection
