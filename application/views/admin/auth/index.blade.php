@extends('admin.template')

@section('title')
 Daftar Akun Administrator 
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Administrator</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/auth')}}"><i class="icon-user-tie position-left"></i> Administrator</a></li>
			<li class="active">Data Administrator</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-user-tie"></i> Daftar</span> Administrator
		<small class="display-block">Ini merupakan daftar akun administrator yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Akun Administrator Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="{{base_url('superuser/auth/create')}}" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Administrator Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th>Avatar</th>
                            <th>Administrator</th>
                            <th>Info</th>
                            <th>Status</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($auth as $key => $result)
                         <tr>
                        	<td align="center">{{($key+1)}}</td>
                        	 <td>
		                        <a href="{{$result->imagedir}}" data-popup="lightbox">
			                        <img src="{{$result->imagedir}}" alt="" class="img-rounded img-preview" style="object-fit: cover;width: 100%;height: 70px;">
		                        </a>
	                        </td>
	                        <td style="width:300px;">
	                        	<a href="{{base_url('superuser/auth/update/'.$result->id.'/'.seo($result->name))}}">
	                        		<b>{{ucwords(read_more($result->name,30))}}</b>
	                        	</a><br>
	                        	<span class="text-size-mini">
	                        	Tanggal Di Buat : {{tgl_indo($result->created_at)}}
	                        	</span>
	                        </td>
	                         <td  align="left">
	                        	<span class="text-size-mini">
	                        	Terakhir : <span class="text-info">{{tgl_indo($result->lastlog)}}</span>
	                        	</span><br>
	                        	<span class="text-size-small">
	                        		ip address : <span class=" text-info">{{$result->ipaddress}}</span>
	                        	</span>
	                        </td>
	                        <td align="center">
	                        	<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="status" data-size="mini" value="0" class="switch" 
										data-on-text="On" data-off-text="Off" data-on-color="success" 
										data-off-color="danger" onchange="changeStatus(this)" data-id="{{$result->id}}"
										 {{(@$result->status=='active') ? 'checked' : ''}} >
									</label>
								</div>
	                        </td>	                      
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="{{base_url('superuser/auth/update/'.$result->id.'/'.seo($result->name))}}">
												<i class="fa fa-edit"></i> Ubah Administrator
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="{{base_url('superuser/auth/delete/'.$result->id.'/'.seo($result->name))}}">
												<i class="fa fa-trash"></i> Hapus Administrator
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
	$(".switch").bootstrapSwitch();	

	function changeStatus(that){
		var id 		= $(that).attr('data-id');
		var status 	= ($(that).is(":checked")) ? 'active' : 'blocked';
		
		$.ajax({
			url: "{{base_url('superuser/auth/changestatus')}}",
			method: 	"POST",
			data: {id:id,status:status},
			beforeSend: function(){
				blockMessage('.panel','Please Wait , Procesing Data','#fff');		
			}
		})
		.done(function(data){
			$('.panel').unblock();

			if(data.auth==false){
				sweetAlert({
					title: 	"Opps!",
					text: 	data.msg,
					type: "error",
				});
			}
		})
		.fail(function() {
		    $('.panel').unblock();
			sweetAlert({
				title: 	"Opss!",
				text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
				type: 	"error",
			});
		 })
	}
</script>
@endsection
