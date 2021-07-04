@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Sosial Media Baru' : 'Ubah Sosial Media' }} - Administrasi
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
			<li class="active">Buat Sosial Media</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-earth"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Sosial Media
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Sosial Media Baru' : 'Perbarui Sosial Media' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Sosial Media</h6>
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
						action="{{ ($type=='create') ? base_url('superuser/sosmed/created') : base_url('superuser/sosmed/updated/'.$sosmed->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Sosial Media <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Nama Sosial Media" name="name" 
								value="{{ ($type=='create') ? '' : $sosmed->name }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Tipe Sosial Media <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<select class="form-control" name="type" required="">
									<option value="">- Pilih Tipe Sosial media</option>
									<option value="facebook" {{match(@$sosmed->type,'facebook','selected')}}>Facebook</option>
									<option value="google" {{match(@$sosmed->type,'google','selected')}}>Google Plus</option>
									<option value="twiter" {{match(@$sosmed->type,'twitter','selected')}}>Twitter</option>
									<option value="youtube" {{match(@$sosmed->type,'youtube','selected')}}>Youtube</option>
									<option value="instagram" {{match(@$sosmed->type,'instagram','selected')}}>Instagram</option>
									<option value="pinterest" {{match(@$sosmed->type,'pinterest','selected')}}>Pinterest</option>
									<option value="linkedin" {{match(@$sosmed->type,'linkedin','selected')}}>Linked In</option>
									<option value="other" {{match(@$sosmed->type,'other','selected')}}>Lainnya</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Url Sosial media <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Url Sosial Media" name="url" 
								value="{{ ($type=='create') ? '' : $sosmed->url }}" required>
							</div>
						</div>

						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Sosial Media' : 'Ubah Sosial Media' }} <i class="icon-arrow-right14 position-right"></i></button>
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
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">

	$(".switch").bootstrapSwitch();	

	$("#form-blog").submit(function(e){
			e.preventDefault();
			var formData = new FormData( $("#form-blog")[0] );

			$.ajax({
				url: 		$("#form-blog").attr('action'),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Sosial Media" : "Memperbarui Sosial Media" }}','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '{{ ($type =="create") ? "Sosial Media Di Buatkan" : "Sosial Media Di Perbarui" }}'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/sosmed')}}");		
						return;
					}
				});

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				});
			 })
			
		})

</script>
@endsection
