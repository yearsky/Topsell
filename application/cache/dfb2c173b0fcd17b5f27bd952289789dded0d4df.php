<?php $__env->startSection('title'); ?>
<?php echo e(($type=="create") ? 'Buat Administrator Baru' : 'Ubah Administrator'); ?> - Administrasi
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Website</span> - Administrator</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="<?php echo e(base_url('superuser/auth')); ?>"><i class="icon-stack2 position-left"></i> Administrator</a></li>
			<li class="active">Buat Administrator</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-user-tie"></i> <?php echo e(($type=="create") ? 'Buat' : 'Ubah'); ?></span> Administrator
		<small class="display-block">
			<?php echo e(($type=="create") ? 'Buat Administrator Baru' : 'Perbarui Administrator'); ?>

		</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-white">
				<div class="panel-heading">
					<h6 class="panel-title text-semibold">Data Administrator</h6>
					<div class="heading-elements">
						<ul class="icons-list">
	                		<li><a data-action="collapse"></a></li>
	                		<li><a data-action="reload"></a></li>
	                		<li><a data-action="close"></a></li>
	                	</ul>
                	</div>
				</div>
				<div class="panel-body">
					<form id="form-blog"action="<?php echo e(($type=='create') ? base_url('superuser/auth/created') : base_url('superuser/auth/updated/'.$auth->id)); ?>" 
						method="post">
					<div class="col-md-6">
						<div class="form-group">
							<label>Nama Lengkap <span class="text-danger"><b>*</b></span></label>
							<input class="form-control" type="text" placeholder="Nama Lengkap" name="name" 
							value="<?php echo e(@$auth->name); ?>" required>
						</div>

						<div id="username-form" class="form-group has-warning has-feedback">
							<label>Username <span class="text-danger"><b>*</b></span></label>
							<div class="input-group">
								<span class="input-group-addon"><i class="icon-user-tie"></i></span>
								<input type="text" class="form-control" name="username" value="<?php echo e(@$auth->username); ?>" alphanum placeholder="Ketik Username Yang Di Inginkan" id="username-input">
							</div>
							<div class="form-control-feedback">
								<i id="username-icon" class="icon-notification2"></i>
							</div>
							<span class="help-block" id="username-msg">Ketik Username Untuk Login Akun</span>
						</div>

						<div class="form-group">
							<label>Password <span class="text-danger"><b>*</b></span></label>
							<div class="input-group">
								<span class="input-group-addon"><i class="icon-key"></i></span>
								<input type="password" class="form-control" placeholder="password" name="password" required>
								<span class="input-group-addon bg-success" onclick="showPass(this)"><i class="icon-eye"></i></span>
							</div>
						</div>

						<div class="form-group">
							<label>Konfirmasi Password <span class="text-danger"><b>*</b></span></label>
							<div class="input-group">
								<span class="input-group-addon"><i class="icon-key"></i></span>
								<input type="password" class="form-control" name="conf_password" placeholder="password konfirmasi" required>
								<span class="input-group-addon bg-success" onclick="showPass(this)"><i class="icon-eye"></i></span>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Avatar </label>
							<div class="media no-margin-top">
								<div class="media-left">
									<a href="#"><img src="<?php echo e(($type=="create") ?  img_holder('profile') : $auth->imagedir); ?>" style="width: 58px; height: 58px;" class="img-rounded" alt=""></a>
								</div>

								<div class="media-body">
									<input id="koko" type="file" class="file-styled" name="image" onchange="avatarUpload(this)">
									<span class="help-block">Format File Images gif,jpg,png File Maks 2MB</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Hak Akses Menu <span class="text-danger"><b>*</b></span></label>
							 <div class="checkbox">
		                        <label>
		                            <input type="checkbox" form="bulkaction" onchange="showAccess(this)" class="styled data-check">
		                            Pilih Semua
		                        </label>
		                    </div>
						</div>
						<div class="form-group">
							<select id="access-menu" class="select-search" name="access[]" multiple="multiple" required>
								<option value="blog" <?php echo e((in_array('blog', @$authrule)) ? 'selected' : ''); ?>>BLOG</option>
								<option value="gallery" <?php echo e((in_array('gallery', @$authrule)) ? 'selected' : ''); ?>>Gallery</option>
								<option value="service" <?php echo e((in_array('service', @$authrule)) ? 'selected' : ''); ?>>SERVICE</option>
								<option value="eventpromo" <?php echo e((in_array('eventpromo', @$authrule)) ? 'selected' : ''); ?>>EVENT PROMO</option>
								<option value="testimoni" <?php echo e((in_array('eventpromo', @$authrule)) ? 'selected' : ''); ?>>TESTIMONI</option>
								<option value="pricelist" <?php echo e((in_array('pricelist', @$authrule)) ? 'selected' : ''); ?>>Pricelist</option>
								<option value="slider" <?php echo e((in_array('slider', @$authrule)) ? 'selected' : ''); ?>>Slider</option>
								<option value="product" <?php echo e((in_array('product', @$authrule)) ? 'selected' : ''); ?>>Produk</option>
								<option value="inbox" <?php echo e((in_array('inbox', @$authrule)) ? 'selected' : ''); ?>>Inbox</option>
								<option value="sosmed" <?php echo e((in_array('sosmed', @$authrule)) ? 'selected' : ''); ?>>Sosial media</option>
								<option value="seo" <?php echo e((in_array('seo', @$authrule)) ? 'selected' : ''); ?>>SEO Website</option>
								<option value="config" <?php echo e((in_array('config', @$authrule)) ? 'selected' : ''); ?>>Pengaturan</option>
								<option value="auth" <?php echo e((in_array('auth', @$authrule)) ? 'selected' : ''); ?>>Administrator</option>

							</select>
						</div>
					</div>
					<div class="col-md-12">
						<div class="text-right">
							<button type="submit" class="btn btn-primary"><?php echo e(($type=='create') ? 'Buat Administrator' : 'Ubah Administrator'); ?> <i class="icon-arrow-right14 position-right"></i></button>
							<?php if($type=="update"): ?>
							<a class="btn btn-danger" href="javascript:void(0)" onclick="window.history.back(); "> Batalkan <i class="fa fa-times position-right"></i></a>
							<?php endif; ?>
						</div>
					</div>
					<div class="clearfix"></div>
					</form>
				</div>
            </div>
		</div>
	</div>
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_layouts.js"></script>


<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">
	$(".switch").bootstrapSwitch();	

	function avatarUpload(input){
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();

	        reader.onload = function (e) {
	        	$(input).parent().parent().prev().find('a img').attr('src', e.target.result);
	            //$("#show-read-only").val($('#img-change-konf').attr('src'));
	        }

	        reader.readAsDataURL(input.files[0]);
	        
	    }
	}

	$(".select-search").select2({
		placeholder: "Pilih Hak Akses Menu	",
  		allowClear: true
	});

	 $(".control-slate").uniform({
        radioClass: 'choice',
        wrapperClass: 'border-slate text-slate'
    }); 

 	$("#username-input").keyup(function(e){
		var value 		= $(this).val();
		var form 		= $("#username-form");
		var icon 		= $("#username-icon");
		var msg 		= $("#username-msg");

		if(value==""){
			$(form).removeAttr('class');
			$(icon).removeAttr('class');
			$(form).attr('class','has-warning  has-feedback');
			$(icon).addClass('icon-notification2');
			$(msg).html('Ketik Username Untuk Login Akun');
			return;
		}

		var data 		= {
							'username'	: value,
							'id'		: '<?php echo e(($type=="update") ? $auth->id : 'none'); ?>'
						  };
		$.ajax({
			url:'<?php echo e(base_url('superuser/auth/checkusername')); ?>',
			method: 	"POST",
			data:  		data,
			beforeSend: function(){
				$(form).removeAttr('class');
				$(icon).removeAttr('class');
				$(form).attr('class','has-warning  has-feedback');
				$(icon).addClass('icon-notification2');
				$(msg).html('Mengecheck Username Anda  . . . . .');
				return;	
			}
		})
		.done(function(data){
			$('#form-blog').unblock();
			if(data.auth==true){
				$(form).removeAttr('class');
				$(icon).removeAttr('class');
				$(form).attr('class','has-success has-feedback');
				$(icon).addClass('icon-checkmark-circle');
				$(msg).html('anda bisa menggunakan username ini');
				return;
			}

			$(form).removeAttr('class');
			$(icon).removeAttr('class');
			$(form).attr('class','has-error has-feedback');
			$(icon).addClass('icon-cancel-circle2');
			$(msg).html(data.msg);
			return;
		})
		.fail(function() {
		   $(form).removeAttr('class');
			$(icon).removeAttr('class');
			$(form).attr('class','has-error has-feedback');
			$(icon).addClass('icon-cancel-circle2');
			$(msg).html('loading. . . .');
			return;
		 })
	})

	function showAccess(that){
		if($(that).is(':checked')){
			$("#access-menu").find('option').prop('selected',true);
		}
		else {
			$("#access-menu").find('option').prop('selected',false);
		}
		$("select.select-search").select2({
			placeholder: "Pilih Hak Akses Menu	",
	  		allowClear: true
		});
	}

	function showPass(that){
		var type 	= $(that).siblings('input').attr('type');

		if(type=="password"){
			$(that).siblings('input').attr('type','text');
		}
		else {
			$(that).siblings('input').attr('type','password');
		}
	}

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
					blockMessage($('#form-blog'),'Please Wait , <?php echo e(($type =="create") ? "Menambahkan Administrator" : "Memperbarui Administrator"); ?>','#fff');		
				}
			})
			.done(function(data){
				$('#form-blog').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : '<?php echo e(($type =="create") ? "Administrator Di Buatkan" : "Administrator Di Perbarui"); ?>'),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("<?php echo e(base_url('superuser/auth')); ?>");		
						return;
					}
					//redirect('<?php echo e(($type =="create") ?  base_url("administrasi/slider/add") : base_url("administrasi/slider/edit/".$auth->id."/".seo($auth->title))); ?>');
				});
				//redirect("<?php echo e(base_url('dashboard/promo/list')); ?>");

			})
			.fail(function() {
			    $('#form-blog').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Lagi Nanti",
					type: 	"error",
				},
				function(){
					/*redirect('<?php echo e(($type =="create") ?  base_url("administrasi/auth/create") : base_url("administrasi/auth/update/".$auth->id."/".seo($auth->title))); ?>');*/
				});
			 })
			
		})

</script>
<script type="text/javascript" src="<?php echo e(base_url()); ?>admin_assets/js/pages/form_select2.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>