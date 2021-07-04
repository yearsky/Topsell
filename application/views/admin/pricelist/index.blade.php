@extends('admin.template')

@section('title')
 Menu pricelist
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Price List</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/pricelist')}}"><i class="icon-price-tags position-left"></i> Price List</a></li>
			<li class="active">Data Pendownload Pricelist</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-price-tags"></i> Daftar</span> Price List
		<small class="display-block">Ini merupakan daftar pendownload Price List anda</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Semua Data Pendowload Price List Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
			        		<li><a data-action="collapse"></a></li>
			        		<li><a data-action="reload"></a></li>
			        		<li><a data-action="close"></a></li>
			        	</ul>
			    	</div>
				</div>
			    <div class="col-md-12" style="margin-top:30px;margin-bottom:10px;">
			        <form id="bulkaction" method="post" action="{{base_url('superuser/pricelist/action')}}">
			            <div class="col-xs-1">
			                <div class="checkbox">
			                    <label>
			                        <input type="checkbox" class="styled" onchange="checkData(this)" name="toggleCheck">
			                        Check
			                    </label>
			                </div>
			            </div>
			            <div class="col-xs-2">
			                <select class="form-control" name="action" required>
			                    <option value="">Aksi</option>
			                    <option value="message">Kirim Pesan</option>
			                    <option value="delete">Hapus Data</option>
			                </select>
			            </div>
			            <div class="col-xs-9">
			                <button type="submit" class="btn bg-danger btn-sm"><i class="icon-check"></i> Action</button>
			                <button type="button" data-toggle="modal" data-target="#modal-file" class="btn btn-success btn-labeled btn-sm pull-right">
			                <b><i class="icon-file-text3"></i></b> File Price List</button>
			            </div>
			        </form>
			        <div class="clearfix"></div>
			    </div>
				<table class="table table-striped media-library table-lg table-responsive">
			        <thead class="bg-slate-800">
			            <tr>
			                <th>No</th>
			            	<th><></th>
			            	<th>Price List</th>
			            	<th>No Telepon</th>
			                <th>Tanggal Download</th>
			            	<th>Action</th>
			            </tr>
			        </thead>
			        <tbody>
			        	@foreach($pricelist as $key => $result)
			             <tr class="{{($result->readed==0) ? 'active-ku' : ''}}">
			                <td align="center">
			                    {{$key+1}}
			                </td>
			                <td >
			                    <div class="checkbox">
			                        <label>
			                            <input type="checkbox" form="bulkaction" value="{{$result->id}}" class="styled data-check" name="data[]">
			                        </label>
			                    </div>
			                </td>
			                <td style="width:300px;">
			                	<a href="#" class="text-readmore" >
			                		<b>{{ucwords($result->name)}}</b>
			                	</a>
			                	<span class="text-size-small text-muted text-readmore">
			                		<a href="javascript:void(0)" onclick="replyInbox(this)" data-id="{{$result->id}}"> {{$result->email}}</a>
			                	</span>
			                </td>
			                <td align="left">
			                	<b>{{$result->phone}}</b>
			                </td>
			                <td align="left">
			                	<span class="text-size-small text-muted">
			                		Tanggal :
			                	</span>
			                	<span class="text-size-small">
			                		{{tgl_indo($result->created_at)}}
			                	</span>
			                </td>
			                <td align="center">
			                 <div class="btn-group">
			                    <button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
		                    	<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<a href="javascript:void(0)" onclick="replyInbox(this)" data-id="{{$result->id}}">
											<i class="fa fa-envelope-o"></i> Kirim Pesan
										</a>
									</li>
									<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
									data-url="{{$result->urldelete}}">
											<i class="fa fa-trash"></i> Hapus Data
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
@section('footer')
<div id="modal-message" class="modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title"><i class=" icon-envelop position-left"></i> Kirimi Pesan</h5>
            </div>

            <div class="modal-body">
            	<form id="form-message" method="post" action="{{base_url('superuser/pricelist/action/message')}}">
            	<input type="hidden" name="action" value="message">
                <div class="form-group">
					<label>Penerima :</label>
					<select id="inbox-email" class="select-search" multiple="multiple" name="data[]" required="">
						@foreach($pricelist as $result)
							<option value="{{$result->id}}">{{$result->email}}</option>
						@endforeach
					</select>
				</div>
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

<div id="modal-file" class="modal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header bg-slate-800">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title"><i class=" icon-file-text3 position-left"></i> File Price List</h5>
            </div>

            <div class="modal-body">
            	<form id="form-file" method="post" action="{{base_url('superuser/pricelist/submitfile')}}">
            	@if($config->file_pricelist!="")
            	<div class="form-group">
            		<label>File Sebelumnya</label>
            		<br>
            		<a href="http://docs.google.com/gview?url={{$config->urlpricelist}}" target="_blank" >
            			{{$config->name}} - PRICE LIST .{{goExplode($config->file_pricelist,'.',1)}}
            		</a>
            	</div>
            	@endif
                <div class="form-group">
					<label>Pilih File Dokumen <span class="text-danger"><b>*</b></span> </label>
					<input type="file" name="pricelist" class="file-styled" accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint,text/plain, application/pdf,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.openxmlformats-officedocument.presentationml.presentation,image/jpeg,image/pjpeg,image/pjpeg,image/jpeg,image/png">
					<span class="help-block">Biarkan File Jika Tidak Ada Perubahan <br> Accepted formats: pdf,doc,docx,ppt,pptx,xls,xlsx,txt,text,jpg,jpeg,png</span>
				</div>
				<div class="form-group">
					<button type="submit"  class="btn btn-success btn-labeled btn-sm btn-block">
			         	<b><i class="icon-upload"></i></b> Upload File
			        </button>
				</div>
				</form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
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

	$(".select-search").select2({
		placeholder: "Pilih Penerima",
  		allowClear: true
	});

	$(".switch").bootstrapSwitch();	
	 $(".control-slate").uniform({
        radioClass: 'choice',
        wrapperClass: 'border-slate text-slate'
    }); 

	 function checkData(that) {
	 	if($(that).is(':checked')){
	 		$("input[name='data[]']").prop('checked',true);
	 	}
	 	else {
	 		$("input[name='data[]']").prop('checked',false);
	 	}

	 	$.uniform.update();
	 }

	 $("#bulkaction").submit(function(e){
			e.preventDefault();
			if($("input[name='data[]']:checked").length <= 0 ){
				return;
			}
			else if($("select[name=action]").val()=="delete"){
			 	swal({
				  title: "Peringatan",
				  text: 'Anda Yaking Ingin Menghapus Data Ini ? ',
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText: "Yes, Change It!",
				  closeOnConfirm: false,
				},
				function(){
					var data = $("#bulkaction").serializeArray();
					$.ajax({
						url: "{{base_url('superuser/pricelist/action')}}",
						method: 	"POST",
						data: data,
						beforeSend: function(){
							blockMessage('.panel','Please Wait , Procesing Data','#fff');		
						}
					})
					.done(function(data){
						$('.panel').unblock();
						sweetAlert({
							title: 	((data.auth==false) ? "Opps!" : 'Success' ),
							text: 	data.msg,
							type: ((data.auth==false) ? "error" : 'success' ),
						},
						function(){
							redirect("{{base_url('superuser/pricelist')}}");		
							return;
						});

					})
					.fail(function() {
					    $('.panel').unblock();
						sweetAlert({
							title: 	"Opss!",
							text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
							type: 	"error",
						},
						function(){

						});
					 })
				  
				});
			}
			else if($("select[name=action]").val()=="message"){

				var data 				= $("input[name='data[]']:checked");
				var modal 				= $("#modal-message");

				$.each(data , function(i, that) { 
					$("#inbox-email option[value="+$(that).val()+"]").prop('selected',true);
				});

				$("select.select-search").select2({
					placeholder: "Pilih Penerima",
			  		allowClear: true
				});

				$(modal).modal('show');
			}
		})

	function replyInbox(that){
		var id 		= $(that).attr('data-id');
		$("#inbox-email option[value="+id+"]").prop('selected',true);
		$("select.select-search").select2({
			placeholder: "Pilih Penerima",
	  		allowClear: true
		});

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


	$("#form-file").submit(function(e){
		e.preventDefault();


		$.ajax({
			url: 		$("#form-file").attr('action'),
			method: 	"POST",
			data:  		new FormData(this),
      		processData: false,
      		contentType: false,
			beforeSend: function(){
				blockMessage($('#modal-file .modal-body'),'Please Wait , Uploading File','#fff');		
			}
		})
		.done(function(data){
			$('#modal-file .modal-body').unblock();				
			if(data.auth==true){
				sweetAlert({
					title: 'Sukses!',
					text: data.msg,
					type: "success",
				},function(){
					location.reload();
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
		    $('#modal-file .modal-body').unblock();				
		    $("#modal-file").modal('hide');
			sweetAlert({
				title: 	"Opss!",
				text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
				type: 	"error",
			});
		 })
		
	})
</script>
@endsection
