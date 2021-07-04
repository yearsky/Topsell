@extends('admin.template')

@section('title')
 Daftar Partnership Anda
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Partnership</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/partnership')}}"><i class=" icon-thumbs-up2 position-left"></i> Partnership</a></li>
			<li class="active">Daftar Partnership</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class=" icon-thumbs-up2"></i> Daftar</span> Partnership
		<small class="display-block">Ini merupakan daftar Partnership yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Partnership Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/partnership/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Partnership Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th>Gambar</th>
                            <th>Partnership</th>
                            <th>URL</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($partner as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
	                        <td>
		                        <a href="{{$result->imagedir}}" data-popup="lightbox">
			                        <img src="{{$result->imagedir}}" alt="" class="img-rounded img-preview" style="object-fit: cover;width: 100%;height: 70px;">
		                        </a>
	                        </td>
	                        <td style="width:300px;">
	                        	<a href="{{$result->urlupdate}}">
	                        		<b>{{ucwords(read_more($result->name,30))}}</b>
	                        	</a><br>
	                        	<span class="text-size-small text-muted">
	                        		{{tgl_indo($result->created_at)}}
	                        	</span>
	                        </td>
	                        <td align="center">
	                        	<a href="{{$result->url}}" target="_blank">{{$result->url}}</a>
	                        </td>
	                      
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="{{$result->urlupdate}}">
												<i class="fa fa-edit"></i> Ubah Partnership
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{$result->urldelete}}">
												<i class="fa fa-trash"></i> Hapus Partnership
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
