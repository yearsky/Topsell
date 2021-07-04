@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Sub Menu Pengunjung Baru' : 'Ubah Sub Menu Pengunjung' }} - Administrasi
@endsection

@section('content')
<div class="page-header">
	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/submenupengunjung')}}"><i class="icon-stack2 position-left"></i> Sub Menu Pengunjung</a></li>
			<li class="active">Buat Sub Menu Pengunjung</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Sub Menu Pengunjung
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Sub Menu Pengunjung Baru' : 'Perbarui Sub Menu Pengunjung' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Sub Menu Pengunjung</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;float:none;padding:20px;">
					<form id="form-blog" class="form-horizontal" 
						action="{{ ($type=='create') ? base_url('superuser/submenupengunjung/created') : base_url('superuser/submenupengunjung/updated/'.$submenupengunjung->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Judul Sub Menu Pengunjung <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Judul Sub Menu Pengunjung" name="judul" 
								value="{{ ($type=='create') ? '' : $submenupengunjung->judul }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Menu Utama <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<select class="select-search" name="menu" required>
									<option value="">Pilih Menu Utama</option>
									@foreach($menupengunjungs as $menupengunjung)
										@if($type=="update")
											<option value="{{$menupengunjung->id}}" {{($menupengunjung->id==@$submenupengunjung->menupengunjung->id) ? "selected" : ""}}> {{$menupengunjung->judul}} </option>
										@else
											<option value="{{$menupengunjung->id}}"> {{$menupengunjung->judul}} </option>
										@endif
									@endforeach
								</select>

							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Link Menu <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Link Url" name="link" 
								value="{{ ($type=='create') ? '' : $submenupengunjung->link }}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Urutan <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Urutan" name="urutan" 
								value="{{ ($type=='create') ? '' : $submenupengunjung->urutan }}">
							</div>
						</div>			
						<div class="form-group">
							<label class="col-lg-2 control-label">Status </label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="aktif" value="0" class="switch" data-on-text="Aktif" data-off-text="Tidak Aktif" data-on-color="success" data-off-color="default" {{(@$submenupengunjung->aktif==0) ? 'checked' : ''}} >
										Aktif / Tidak Aktif
									</label>
								</div>
							</div>
						</div>		

						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Sub Menu Pengunjung' : 'Ubah Sub Menu Pengunjung' }} <i class="icon-arrow-right14 position-right"></i></button>
							@if($type=="update")
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
							@endif
						</div>
					</form>
				</div>
            </div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

@endsection

@section('script')

<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_layouts.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>

<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

	$("#form-blog").submit(function(e){
			e.preventDefault();
			var formData = new FormData( $("#form-blog")[0] );

			 for ( instance in CKEDITOR.instances ) {
		        CKEDITOR.instances[instance].updateElement();
		    }

			$.ajax({
				url: 		$("#form-blog").attr('action'),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Sub Menu Pengunjung" : "Memperbarui Sub Menu Pengunjung" }}','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '{{ ($type =="create") ? "Sub Menu Pengunjung Di Buat" : "Sub Menu Pengunjung Di Perbarui" }}'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/submenupengunjung')}}");		
						return;
					}
					//redirect('{{ ($type =="create") ?  base_url("administrasi/slider/add") : base_url("administrasi/slider/edit/".$submenupengunjung->id."/".seo($submenupengunjung->name))}}');
				});
				//redirect("{{base_url('dashboard/promo/list')}}");

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				},
				function(){
					/*redirect('{{ ($type =="create") ?  base_url("administrasi/submenupengunjung/create") : base_url("administrasi/submenupengunjung/update/".$submenupengunjung->id."/".seo($submenupengunjung->name))}}');*/
				});
			 })
			
		})

</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_select2.js"></script>
@endsection