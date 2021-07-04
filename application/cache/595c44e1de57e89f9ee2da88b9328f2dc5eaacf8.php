<?php $__env->startSection('title'); ?>
Detail Pesan -  <?php echo e($inbox->name); ?> - <?php echo e($inbox->email); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Kotak Masuk</h4>
		</div>
	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/member')); ?>"><i class="icon-envelop5"></i> Kotak Masuk</a></li>
			<li class="active">Data Kotak Masuk</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-envelop5"></i> Detail</span> Kotak Masuk - <?php echo e(ucwords($inbox->name)); ?>

		<small class="display-block">Ini merupakan detail pesan keseluruhan</i></small>
	</h6>
	<div class="row">
		<div class="col-md-12">
			<button type="button"onclick="replyInbox()"  title="Balas Pesan" class="btn bg-slate-600 btn-labeled btn-sm" >
				<b><i class="icon-envelop5"></i></b> Balas Pesan
			</button>
			<button type="button"onclick="deleteIt(this)"  data-url="<?php echo e($inbox->urldelete); ?>" title="Hapus Data Kotak Masuk" class="btn btn-danger btn-labeled btn-sm" >
				<b><i class="icon-trash"></i></b> Hapus Pesan
			</button>
			<div class="pull-right">
				<?php if($inbox->respond == 1): ?>
				<button type="button" class="btn btn-success btn-rounded"><i class="icon-check position-left"></i> Terespon</button>
				<?php else: ?>
				<button type="button" class="btn btn-default btn-rounded"><i class="icon-cross position-left"></i> Belum Terespon</button>
				<?php endif; ?>
			</div>
		</div>
		<div class="clearfix"></div>
		<div style="height:20px"></div>
		<div class="col-md-12">
			<div class="panel panel-body">
				<div class="col-md-6 col-lg-8 content-group">
					<span class="text-muted">Informasi Pengirim Pesan</span>
					<ul class="list-condensed list-unstyled">
						<li><h5><?php echo e($inbox->name); ?></h5></li>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">Tanggal Pesan :</span></li>
							<li><?php echo e(tgl_indo($inbox->created_at)); ?></li>
						</div>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">Email Pemesan :</span></li>
							<li><a href="mailto:<?php echo e($inbox->email); ?>"><?php echo e($inbox->email); ?></a></li>
						</div>
						<div class="col-md-4 no-padding">
							<li><span class="text-muted text-size-small">No Telepon :</span></li>
							<li><a href="tel://<?php echo e($inbox->phone); ?>"><?php echo e($inbox->phone); ?></a></li>
						</div>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12">
					<?php echo e($inbox->description); ?>

				</div>
			</div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
<div id="modal-message" class="modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title"><i class=" icon-envelop position-left"></i> Kirimi Pesan ke - <?php echo e($inbox->email); ?></h5>
            </div>

            <div class="modal-body">
            	<form id="form-message" method="post" action="<?php echo e(base_url('superuser/inbox/action/message')); ?>">
            	<input type="hidden" name="action" value="message">
				<input type="hidden" name="data[]" value="<?php echo e($inbox->id); ?>">
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
<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/media/fancybox.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/default_datatable.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	var editorsmall = true;
</script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/editor_ckeditor.js"></script>

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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>