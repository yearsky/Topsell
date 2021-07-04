@extends('admin.template')

@section('title')
 Daftar Subscribe Email Masuk
@endsection

@section('style')

@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Subscribe</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/subscribe')}}"><i class="icon-archive position-left"></i> Subscribe</a></li>
			<li class="active">Daftar Subscribe Email Masuk</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-envelop"></i> Daftar</span> Subscribe Email Masuk
		<small class="display-block">Ini merupakan daftar subscribe email masuk</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Subscribe Email Masuk</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th></th>
                            <th>Email</th>
                            <th>Status</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($subscribe as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
                        	<td></td>
	                        <td style="width:300px;">
	                        	<a href="#">
	                        		<b>{{$result->email}}</b>
	                        	</a>
	                        </td>
	                        <td align="center">
	                        	@if($result->status==0)
	                        		<span class="label label-default label-icon" data-popup="tooltip" title="Belum di Respon"><i class="icon-cross"></i></span>
	                        	@else
	                        		<span class="label label-primary label-icon" data-popup="tooltip" title="Sudah di Respon"><i class="icon-check"></i></span>
	                        	@endif
	                        </td>
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li><a href="javascript:void(0)" onclick="Respon(this)" 
										data-url="{{base_url('superuser/subscribe/respon/'.$result->id)}}">
												<i class="fa fa-envelope"></i> Respon Subscribe
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{base_url('superuser/subscribe/delete/'.$result->id)}}">
												<i class="fa fa-trash"></i> Hapus Subscribe
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
<script type="text/javascript">
	function Respon(that){
		swal({   
			title: "Apa Anda Yakin ?",   
			text: "Anda Akan Merespon Data Ini",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "Ya, Respon Data!",   
			closeOnConfirm: false 
		}, function(){   
			swal({   
					title: "Sukses",   
					text: "Data Telah Di Respon",   
					type: "success"
			},function(){
				redirect($(that).attr('data-url'));
			}); 
			
		});	
	}
</script>
@endsection
