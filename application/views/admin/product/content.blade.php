@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Produk Baru' : 'Ubah Produk' }} 
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Produk</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/product')}}"><i class="icon-packgae position-left"></i> Produk</a></li>
			<li class="active">{{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Produk</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-package"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Produk
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Produk Baru' : 'Ubah Produk' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Produk</h6>
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
						action="{{ ($type=='create') ? base_url('superuser/product/created') : base_url('superuser/product/updated/'.$product->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Produk <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Nama Produk" name="name" 
								value="{{ ($type=='create') ? '' : $product->name }}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Kategori <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<select class="select-select2" name="category"  required>
									<option value="">Pilih Kategori</option>
									@foreach($category as $result)
										@if($type=="update")
											<option value="{{$result->id}}" {{($result->id==$product->category->id) ? "selected" : ""}}>{{$result->name}}</option>
										@else
											<option value="{{$result->id}}">{{$result->name}}</option>
										@endif
									@endforeach
								</select>

							</div>
						</div>

					
						<div class="form-group">
							<label class="col-lg-2 control-label">Opsi Produk<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10 no-padding">
								<div class="col-md-6">
									<div class="form-group">
										<label >Harga Asli <span class="text-danger"><b>*</b></span></label>
										<div class="form-group has-feedback has-feedback-left">
											<input type="text" rule="currency"  class="form-control numberformat input-lg" name="price" placeholder="ex: ( 10000 ) Harga Asli produk" 
											value="{{($type=='create') ? '0' : number_format($product->price,0,',','.') }}">
											<div class="form-control-feedback">
												Rp.
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label >Harga Coret <span class="text-danger"><b>*</b></span></label>
										<div class="form-group has-feedback has-feedback-left">
											<input type="text" rule="currency" class="form-control numberformat input-lg" name="price_false" placeholder="ex: ( 10000 ) Harga Coret Produk" 
											value="{{($type=='create') ? '0' : number_format($product->price_false,0,',','.') }}">
											<div class="form-control-feedback">
												Rp.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Produk <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea  id="editor-full" rows="2"  name="description" cols="2">{!! ($type=='create') ? '' : $product->description !!}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Gambar Produk<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10 no-padding">
								<div class="col-md-12">
									<button type="button" class="btn bg-purple btn-labeled" onclick="addImage()"><b><i class="icon-image3"></i></b> Tambah Gambar</button>
									<span class="help-block">
										Accepted formats: gif, png, jpg. Max file size 2Mb
										@if($type=="update")
											, Jangan Ganti Gambar Jika Tidak Ada perubahan
										@endif
									</span>	
								</div>
								<div class="clearfix" style="margin-bottom: 20px;"></div>
								<div id="wrap-image">
									@if($type=="create")
									<div class="col-md-4">
										<div class="thumbnail" style="margin-bottom:10px;">
											<div class="thumb">
												<img src="{{img_holder()}}" class="product" alt="">
												<div class="caption-overflow">
													<span>
														<a href="{{img_holder()}}" data-popup="lightbox" rel="gallery" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-search4"></i></a>
													</span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<input type="file" name="image[]" class="file-styled image-product-upload" required>
										</div>
									</div>
									@elseif($type=='update')
										@foreach($product->images as $key => $result)
											<div class="col-md-4" style="margin-bottom:40px;">
												<div class="thumbnail" style="margin-bottom:10px;">
													<div class="thumb">
														<img src="{{$result->imagedir}}" class="product" alt="">
														<div class="caption-overflow">
															<span>
																<a href="{{$result->imagedir}}" data-popup="lightbox" rel="gallery" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-search4"></i></a>
																'&nbsp;&nbsp;<a href="javascript:void(0)" onclick="imageRemove(this)" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-cross3"></i></a>
															</span>
														</div>
													</div>
												</div>
												<div class="form-group">
													<input type="file" name="image_{{$result->id}}" class="file-styled image-product-upload" >
													<input type="hidden" name="available_image" value="true">
													<input type="hidden" name="available_{{$result->id}}" value="true">
												</div>
											</div>
										@endforeach
									@endif
								</div>

								<div class="clearfix"></div>
								
							</div>
						</div>
						
						<div class="gap"></div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Status Produk<span class="text-danger"> <b>*</b></span></label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="status" value="0" class="switch" data-on-text="Publish" data-off-text="Draft" data-on-color="success" data-off-color="default" {{(@$product->status==0) ? 'checked' : ''}} >
										Publikasi / Simpan Ke Draft
									</label>
								</div>
							</div>
						</div>
						

						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Produk' : 'Ubah Produk' }} <i class="icon-arrow-right14 position-right"></i></button>
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
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/inputs/formatter.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/ui/moment/moment.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/pickers/daterangepicker.js"></script>

<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/uniform.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>



<script type="text/javascript">
	 $(".control-primary").uniform({
        radioClass: 'choice',
        wrapperClass: 'border-primary-600 text-primary-800'
    });

	$(".select-select2").select2();

	$(".switch").bootstrapSwitch();

	function addImage(){
		var wrap 		= $("#wrap-image");

		var html 		= '<div class="col-md-4" style="margin-bottom:40px;">'+
								'<div class="thumbnail" style="margin-bottom:10px;">'+
									'<div class="thumb">'+
										'<img src="{{img_holder()}}" class="product" alt="">'+
										'<div class="caption-overflow">'+
											'<span>'+
												'<a href="{{img_holder()}}" data-popup="lightbox" rel="gallery" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-search4"></i></a>'+
												'&nbsp;&nbsp;<a href="javascript:void(0)" onclick="imageRemove(this)" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-cross3"></i></a>'+
											'</span>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'<div class="form-group">'+
									'<input type="hidden" name="available_image" value="true">'+
									'<input type="file" name="image[]" class="file-styled image-product-upload" required>'+
								'</div>'+
							'</div>';

		$(wrap).append(html);

		$(".file-styled").uniform({
	        fileButtonHtml: '<i class="icon-googleplus5"></i>',
	        wrapperClass: 'bg-warning'
	    });

	    $(".image-product-upload").change(function(e){
			var input 		 	= this;
			var element 		= $(this).parents('.col-md-4').find('img');
			var href 			= $(this).parents('.col-md-4').find('a[rel="gallery"]');

		    if (input.files && input.files[0]) {
		        var reader = new FileReader();

		        reader.onload = function (e) {
		            jQuery(element).attr('src', e.target.result);
		            jQuery(href).attr('href',e.target.result);
		        }
		        reader.readAsDataURL(input.files[0]);
		    }
		})

	}

	$(".image-product-upload").change(function(e){
		var input 		 	= this;
		var element 		= $(this).parents('.col-md-4').find('img');
		var href 			= $(this).parents('.col-md-4').find('a[rel="gallery"]');

	    if (input.files && input.files[0]) {
	        var reader = new FileReader();

	        reader.onload = function (e) {
	            jQuery(element).attr('src', e.target.result);
	            jQuery(href).attr('href',e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	})

	function imageRemove(that){
		$(that).parents('.col-md-4').remove();
	}


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
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Produk" : "Memperbarui Produk" }}','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '{{ ($type =="create") ? "Produk Di Buatkan" : "Produk Di Perbarui" }}'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/product')}}");		
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

	showSchedule($("input[name=type]"));
</script>
@endsection
