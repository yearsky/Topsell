@extends('admin.template')

@section('title')
Detail Pesan -  {{$inbox->name}} - {{$inbox->email}}
@endsection
@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Kotak Masuk</h4>
		</div>
	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/member')}}"><i class="icon-envelop5"></i> Kotak Masuk</a></li>
			<li class="active">Data Kotak Masuk</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-envelop5"></i> Detail</span> Kotak Masuk - {{ucwords($inbox->name)}}
		<small class="display-block">Ini merupakan detail pesan keseluruhan</i></small>
	</h6>
	<div class="row">
		<div class="col-md-12">
			<button type="button"onclick="replyInbox()"  title="Balas Pesan" class="btn bg-slate-600 btn-labeled btn-sm" >
				<b><i class="icon-envelop5"></i></b> Balas Pesan
			</button>
			<button type="button"onclick="deleteIt(this)"  data-url="{{$inbox->urldelete}}" title="Hapus Data Kotak Masuk" class="btn btn-danger btn-labeled btn-sm" >
				<b><i class="icon-trash"></i></b> Hapus Pesan
			</button>
			<div class="pull-right">
				@if($inbox->respond == 1)
				<button type="button" class="btn btn-success btn-rounded"><i class="icon-check position-left"></i> Terespon</button>
				@else
				<button type="button" class="btn btn-default btn-rounded"><i class="icon-cross position-left"></i> Belum Terespon</button>
				@endif
			</div>
		</div>
		<div class="clearfix"></div>
		<div style="height:20px"></div>
		<div class="col-md-12">
			<div class="panel panel-body">
				<div class="col-md-6 col-lg-8 content-group">
					<span class="text-muted">Informasi Pengirim Pesan</span>
					<ul class="list-condensed list-unstyled">
						<li><h5>{{$inbox->name}}</h5></li>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">Tanggal Pesan :</span></li>
							<li>{{tgl_indo($inbox->created_at)}}</li>
						</div>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">Email Pemesan :</span></li>
							<li><a href="mailto:{{$inbox->email}}">{{$inbox->email}}</a></li>
						</div>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">No Telepon :</span></li>
							<li><a href="tel://{{$inbox->phone}}">{{$inbox->phone}}</a></li>
						</div>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12">
					{{ $inbox->description }}
				</div>
			</div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

@endsection

@section('footer')
<div id="modal-message" class="modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title"><i class=" icon-envelop position-left"></i> Kirimi Pesan ke - {{$inbox->email}}</h5>
            </div>

            <div class="modal-body">
            	<form id="form-message" method="post" action="{{base_url('superuser/inbox/action/message')}}">
            	<input type="hidden" name="action" value="message">
				<input type="hidden" name="data[]" value="{{$inbox->id}}">
				<div class="form-group">
					<label>Judul Pesan :</label>
					<input type="text" name="title" class="form-control" placeholder="Judul Pesan" required="">
				</div>
				<div class="form-group">
					<label>Pesan : </label>
					<textarea  id="editor-full" rows="2"  name="description" cols="2"></textarea>
				</div>
				</form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-link" data-dismiss="modal">Batalkan</button>
                <button type="submit" form="form-message" class="btn btn-primary"><i class="icon-paperplane"></i>  Kirim Pesan</button>
            </div>
        </div>
    </div>
</div>
@endsection


@section('script')
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/media/fancybox.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/form_layouts.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/default_datatable.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	var editorsmall = true;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>

<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

	function replyInbox(){
		$("#modal-message").modal('show');
	}

	$("#form-message").submit(function(e){
			e.preventDefault();
			var formData = new FormData( $("#form-blog")[0] );

			 for ( instance in CKEDITOR.instances ) {
		        CKEDITOR.instances[instance].updateElement();
		    }

			$.ajax({
				url: 		$("#form-message").attr('action'),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('#modal-message .modal-body'),'Please Wait , Sending Message','#fff');		
				}
			})
			.done(function(data){
				$('#modal-message .modal-body').unblock();				
				if(data.auth==true){
					sweetAlert({
						title: 'Sukses!',
						text: data.msg,
						type: "success",
					},function(){
						$("#modal-message").modal('hide');		
					});
					return;
				}
				sweetAlert({
					title: 'opps!',
					text: data.msg,
					type: "error",
				});
			})
			.fail(function() {
			    $('#modal-message .modal-body').unblock();				
			    $("#modal-message").modal('hide');
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				});
			 })
			
		})
</script>
@endsection
