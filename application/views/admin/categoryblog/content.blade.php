@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Kategori Blog Baru' : 'Ubah Kategori Blog' }}
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Kategori Blog</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/categoryblog')}}"><i class="icon-price-tags"></i> Kategori Blog</a></li>
			<li class="active">{{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Kategori Blog</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-price-tags"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Kategori Blog
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Kategori Blog Baru' : 'Ubah Kategori Blog' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Kategori Blog</h6>
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
						action="{{ ($type=='create') ? base_url('superuser/categoryblog/created') : base_url('superuser/categoryblog/updated/'.$category->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Kategori <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Nama Kategori Blog" name="name" 
								value="{{ ($type=='create') ? '' : $category->name }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Kategori Blog <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea   name="description" placeholder="Deskripsi Kategori Blog" cols="2" class="form-control">{!! ($type=='create') ? '' : $category->description !!}</textarea>
							</div>
						</div>
						
						<div class="text-right">
							<button type="submit" class="btn btn-primary">
								{{ ($type=='create') ? 'Buat Kategori' : 'Ubah Kategori' }} <i class="icon-arrow-right14 position-right"></i>
							</button>
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
<script type="text/javascript">
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
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Kategori Blog" : "Memperbarui Kategori Blog" }}','#fff');
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : 'Sukses'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/categoryblog')}}");		
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
