@extends('admin.template')

@section('title')
 Daftar Sub Menu Pengunjung - {{$config->name}}
@endsection

@section('content')
<div class="page-header">
	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/submenupengunjung')}}"><i class="icon-stack2 position-left"></i> Sub Menu Pengunjung</a></li>
			<li class="active">Data Sub Menu Pengunjung</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-price-tags"></i> Daftar</span> Sub Menu Pengunjung
		<small class="display-block">Ini merupakan daftar artikel yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Sub Menu Pengunjung Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/submenupengunjung/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Sub Menu Pengunjung</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                            <th>Sub Menu Pengunjung</th>
                            <th>Menu Utama</th>
                            <th>Aktif</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($submenupengunjung as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
	                        <td style="width:300px;">
	                        	<a href="#"><b>{{$result->judul}}</b></a><br>
	                        </td>
	                        <td align="center">
	                        	<span class="label label-default">{{$result->menupengunjung->judul}} </span>
	                        </td>
	                        <td align="center">
	                        	@if($result->aktif==1)
	                        		<span class="label label-warning" data-popup="tooltip" title="Aktif">Tidak Aktif</span>
	                        	@else
	                        		<span class="label label-primary" data-popup="tooltip" title="Tidak Aktif">Aktif</span>
	                        	@endif
	                        </td>
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="{{base_url('superuser/submenupengunjung/update/'.$result->id.'/'.seo($result->judul))}}">
												<i class="fa fa-edit"></i> Ubah Sub Menu Pengunjung
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{base_url('superuser/submenupengunjung/deleted/'.$result->id.'/'.seo($result->judul))}}">
												<i class="fa fa-trash"></i> Hapus Sub Menu Pengunjung
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
