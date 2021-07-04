<?php $__env->startSection('title'); ?>
 Daftar Halaman - <?php echo e($config->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Halaman</h4>
		</div>
	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/halamanstatis')); ?>"><i class="icon-stack2 position-left"></i> Halaman</a></li>
			<li class="active">Data Halaman</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> Daftar</span> Halaman
		<small class="display-block">Ini merupakan daftar halaman yang telah anda buat</i></small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Daftar Halaman Anda</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="col-md-12 clearfix" style="margin-top:10px;margin-bottom:10px;">
					<a href="<?php echo e(base_url('superuser/halamanstatis/create')); ?>" class="btn bg-teal-400 btn-labeled btn-rounded"><b><i class="icon-plus3"></i></b> Tambah Halaman Baru</a>
				</div>
				<table class="table table-striped media-library table-lg table-responsive">
                    <thead>
                        <tr>
                        	<th>No</th>
                        	<th>Gambar</th>
                            <th>Judul</th>
                            <th>Link</th>
                            <th>View</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<?php foreach($halamanstatis as $key => $result): ?>
                         <tr>
                        	<td align="center"><?php echo e(($key+1)); ?></td>
	                        <td>
		                        <a href="<?php echo e($result->coverdir); ?>" data-popup="lightbox">
			                        <img src="<?php echo e($result->coverdir); ?>" alt="" class="img-rounded img-preview" style="object-fit: cover;height: 50px;">
		                        </a>
	                        </td>
	                        <td style="width:300px;">
	                        	<a href="<?php echo e(base_url('superuser/halamanstatis/update/'.$result->id.'/'.seo($result->judul))); ?>">
	                        		<b><?php echo e(ucwords(read_more($result->judul,30))); ?></b>
	                        	</a><br>
	                        	<span class="text-size-mini">
	                        	Tanggal Publish : <?php echo e(tgl_indo($result->created_at)); ?>

	                        	</span><br>
	                        	<span class="text-size-small text-muted">
	                        		<?php echo e(read_more(strip_tags($result->deskripsi),30)); ?>

	                        	</span>
	                        </td>
	                        <td>
		                       <a href="<?php echo e(base_url('main/halaman/'.$result->id.'/'.seo($result->judul))); ?>" target="_blank"> 
		                        main/halaman/<?php echo e($result->id.'/'.seo($result->judul)); ?>

		                        </a>
	                        </td>
	                        <td align="center">
	                        	<span class="label label-success"><i class="icon-eye"></i> &nbsp;<?php echo e($result->view); ?>X</span>
	                        </td>
	                      
	                        <td class="text-center">
	                           <div class="btn-group">
			                    	<button type="button" class="btn btn-danger btn-sm btn-rounded dropdown-toggle" data-toggle="dropdown"><i class="icon-cog5 position-left"></i> Action <span class="caret"></span></button>
			                    	<ul class="dropdown-menu dropdown-menu-right">
			                    		<li>
											<a href="<?php echo e(base_url('main/halaman/'.$result->id.'/'.seo($result->judul))); ?>" target="_blank">
												<i class="fa fa-eye"></i> Lihat Halaman Website
											</a>
										</li>
										<li>
											<a href="<?php echo e(base_url('superuser/halamanstatis/update/'.$result->id.'/'.seo($result->judul))); ?>">
												<i class="fa fa-edit"></i> Ubah Halaman
											</a>
										</li>
										<?php if($result->id != 9): ?>
										<li><a href="javascript:void(0)" onclick="deleteIt(this)" 
										data-url="<?php echo e(base_url('superuser/halamanstatis/deleted/'.$result->id.'/'.seo($result->judul))); ?>">
												<i class="fa fa-trash"></i> Hapus Halaman
											</a>
										</li>
										<?php endif; ?>
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
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/gallery_library.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>