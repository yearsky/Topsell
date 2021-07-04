@extends('admin.template')

@section('title')
 Daftar Akun Sosial Media
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Sosial Media</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/sosmed')}}"><i class="icon-earth position-left"></i> Sosial Media</a></li>
			<li class="active">Data Sosial Media</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-earth"></i> Daftar</span> Sosial Media
		<small class="display-block">Ini merupakan daftar sosial media yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Sosial Media Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/sosmed/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Sosial Media Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                            <th>Sosial Media</th>
                            <th>Tpe</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($sosmed as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
	                        <td style="width:300px;">
	                        	<a href="{{base_url('superuser/sosmed/update/'.$result->id.'/'.seo($result->name))}}">
	                        		<b>{{ucwords(read_more($result->name,30))}}</b>
	                        	</a><br>
	                        	<span class="text-size-mini">
	                        	Tanggal Publish : {{tgl_indo($result->created_at)}}
	                        	</span>
	                        </td>
	                        <td align="center">
	                        	<span class="label label-flat border-primary text-primary-600">{{$result->type}}</span>
	                        </td>
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="{{base_url('superuser/sosmed/update/'.$result->id.'/'.seo($result->name))}}">
												<i class="fa fa-edit"></i> Ubah Sosial Media
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{base_url('superuser/sosmed/delete/'.$result->id.'/'.seo($result->name))}}">
												<i class="fa fa-trash"></i> Hapus Sosial Media
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
