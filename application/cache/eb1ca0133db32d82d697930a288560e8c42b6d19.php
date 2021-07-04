<?php $__env->startSection('title'); ?>
 Daftar Slider Anda
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Slider</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/slider')); ?>"><i class="icon-image-compare position-left"></i> Slider</a></li>
			<li class="active">Daftar Slider</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-image-compare"></i> Daftar</span> Slider
		<small class="display-block">Ini merupakan daftar Slider yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Slider Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="<?php echo e(base_url('superuser/slider/create')); ?>" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Slider Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th>Gambar</th>
                            <th>Slider</th>
                            <th>Status</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<?php foreach($slider as $key => $result): ?>
                         <tr>
                        	<td align="center"><?php echo e(($key+1)); ?></td>
	                        <td>
		                        <a href="<?php echo e($result->imagedir); ?>" data-popup="lightbox">
			                        <img src="<?php echo e($result->imagedir); ?>" alt="" class="img-rounded img-preview" style="object-fit: cover;width: 100%;height: 70px;">
		                        </a>
	                        </td>
	                        <td style="width:300px;">
	                        	<a href="<?php echo e($result->urlupdate); ?>">
	                        		<b><?php echo e(ucwords(read_more($result->name,30))); ?></b>
	                        	</a><br>
	                        	<span class="text-size-small text-muted">
	                        		<?php echo e(tgl_indo($result->created_at)); ?>

	                        	</span>
	                        </td>
	                        <td align="center">
	                        	<?php if($result->status==1): ?>
	                        		<span class="label label-default label-icon" data-popup="tooltip" title="Draft"><i class="icon-pencil5"></i></span>
	                        	<?php else: ?>
	                        		<span class="label label-primary label-icon" data-popup="tooltip" title="Terpublikasikan"><i class="icon-check"></i></span>
	                        	<?php endif; ?>
	                        </td>
	                      
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
										<li>
											<a href="<?php echo e($result->urlupdate); ?>">
												<i class="fa fa-edit"></i> Ubah Slider
											</a>
										</li>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="<?php echo e($result->urldelete); ?>">
												<i class="fa fa-trash"></i> Hapus Slider
											</a>
										</li>
									</ul>
								</div>
	                        </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/media/fancybox.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/default_datatable.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>