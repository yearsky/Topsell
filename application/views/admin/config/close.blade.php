@extends('admin.template')

@section('title')
Administrasi - Pengaturan Website
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Pengaturan</span> - Administrasi</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/config')}}"><i class="icon-stack2 position-left"></i> Pengaturan</a></li>
			<li class="active">Pengaturan Website</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class=" icon-spam"></i> Pengaturan</span> Maintenance
		<small class="display-block">Mengatur Halaman Maintenance Website Anda</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="tabbable tab-content-bordered">
				@include('admin.config.pieces')
				<div class="tab-content ">
					<div class="tab-pane active">
						<div  style="padding:20px;">
                			<form id="form-config" class="form-horizontal" action="{{base_url('superuser/config/closesave')}}" method="post">
								<div class="form-group">
									<label class="col-lg-2 control-label">Status Website<span class="text-danger"> <b>*</b></span></label>
									<div class="col-lg-10">
										<div class="checkbox checkbox-switch">
											<label>
												<input type="checkbox" name="status" value="0" class="switch" data-on-text="Aktif" data-off-text="Tutup" data-on-color="success" data-off-color="danger" {{ ($config->status==0) ? 'checked' : '' }} >
												Aktif / Tutup
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-2 control-label">Pesan Maintenance <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<textarea  id="editor-full" rows="2"  name="description" cols="2">{!! $config->close_message !!}</textarea>
									</div>
								</div>

								<div class="text-right">
									<button type="submit" class="btn btn-primary">Simpan Pengaturan <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
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
<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
$(".switch").bootstrapSwitch();	

$("#form-config").submit(function(e){
	e.preventDefault();
	
	var formData = new FormData( $("#form-config")[0] );

	 for ( instance in CKEDITOR.instances ) {
        CKEDITOR.instances[instance].updateElement();
    }

	$.ajax({
		url: 		$("#form-config").attr('action'),
		method: 	"POST",
		data:  		new FormData($("#form-config")[0]),
  		processData: false,
  		contentType: false,
		beforeSend: function(){
			blockMessage($('#form-config'),'Tunggu , Sedang Menyimpan Konfigurasi','#fff');		
		}
	})
	.done(function(data){

		$('#form-config').unblock();
		sweetAlert({
			title: 	((data.auth==false) ? "Opps!" : "Konfigurasi Di Simpan"),
			text: 	data.msg,
			type: 	((data.auth==false) ? "error" : "success"),
		},
		function(){
			if(data.auth!=false){
				redirect("{{base_url('superuser/config/close')}}");		
				return;
			}
			return;
		});

	})
	.fail(function() {
	    $('#form-config').unblock();
		sweetAlert({
			title: 	"Opss!",
			text: 	"Ada Yang Salah! , Silahkan Coba Kembali",
			type: 	"error",
		});
	 })
	
});
</script>

@endsection
