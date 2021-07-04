@extends('admin.template')

@section('title')
{{($type=="create") ? 'Buat Event Baru' : 'Ubah Event' }} 
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Event</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/event')}}"><i class="icon-price-tag position-left"></i> Event</a></li>
			<li class="active">Buat Event</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-price-tag"></i> {{ ($type=="create") ? 'Buat' : 'Ubah' }}</span> Event
		<small class="display-block">
			{{ ($type=="create") ? 'Buat Event Baru' : 'Perbarui Event' }}
		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Event</h6>
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
						action="{{ ($type=='create') ? base_url('superuser/event/created') : base_url('superuser/event/updated/'.$event->id) }}" 
					method="post">
						<div class="form-group">
							<label class="col-lg-2 control-label">Nama Event <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="Nama Event" name="name" 
								value="{{ ($type=='create') ? '' : $event->name }}" required>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-lg-2 control-label">Jenis <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<select class="select-search" name="type">
									<option value="">- Pilih Tipe</option>
									<option value="event" {{match(@$event->type,'event','selected')}}>Event</option>
									<option value="promo" {{match(@$event->type,'promo','selected')}}>Promo</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Deskripsi Event <span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<textarea  id="editor-full" rows="2"  name="description" cols="2">{!! ($type=='create') ? '' : $event->description !!}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Gambar Event<span class="text-danger"><b>*</b></span></label>
							<div class="col-lg-10">
								<input type="file" class="file-input-custom" name="image" accept="image/*" {{ ($type=='create') ? '' : '' }}>
									<span class="help-block"> {{ ($type=='create') ? '' : '( Jangan Ubah Jika Tidak Ada Perubahan)' }}  
									Ukuran Maksimum 3MB , Hanya File Gambar
									</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Status Event<span class="text-danger"> <b>*</b></span></label>
							<div class="col-lg-10">
								<div class="checkbox checkbox-switch">
									<label>
										<input type="checkbox" name="status" value="0" class="switch" data-on-text="Publish" data-off-text="Draft" data-on-color="success" data-off-color="default" {{ (@$event->status==0) ? 'checked' : '' }} >
										Publikasi / Simpan Ke Draft
									</label>
								</div>
							</div>
						</div>

						<div class="text-right">
							<button type="submit" class="btn btn-primary">{{ ($type=='create') ? 'Buat Event' : 'Ubah Event' }} <i class="icon-arrow-right14 position-right"></i></button>
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
	var editorsmall = false;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

	$(".select-search").select2();

	$('.file-input-custom').fileinput({
        previewFileType: 'image',
        browseLabel: 'Select',
        browseClass: 'btn bg-slate-700',
        browseIcon: '<i class="icon-image2 position-left"></i> ',
        removeLabel: 'Remove',
        removeClass: 'btn btn-danger',
        removeIcon: '<i class="icon-cancel-square position-left"></i> ',
        uploadClass: 'hidden',
        uploadIcon: '<i class="icon-file-upload position-left"></i> ',
        layoutTemplates: {
            caption: '<div tabindex="-1" class="form-control file-caption {class}">\n' + '<span class="icon-file-plus kv-caption-icon"></span><div class="file-caption-name"></div>\n' + '</div>'
        },
        initialPreview: ["<img src='{{ ($type=='create') ? img_holder() : $event->imagedir }}' class='file-preview-image' alt=''>",],
        overwriteInitial: true
    });


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
					blockMessage($('#form-blog'),'Please Wait , {{ ($type =="create") ? "Menambahkan Event" : "Memperbarui Event" }}','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : 'sukses'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/event')}}");		
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
