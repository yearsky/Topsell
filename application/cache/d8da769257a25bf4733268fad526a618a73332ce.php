
<ul class="nav nav-tabs nav-tabs-highlight">
	<li class="<?php echo e(match(@$submenu,'about','active')); ?>">
		<a href="<?php echo e(base_url('superuser/config/about')); ?>"  ><i class="icon-magazine position-left"></i> Tentang Website</a>
	</li>
	<li class="<?php echo e(match(@$submenu,'contact','active')); ?>">
		<a href="<?php echo e(base_url('superuser/config/contact')); ?>" ><i class=" icon-address-book position-left"></i> Informasi Kontak</a>
	</li>
	<li class="<?php echo e(match(@$submenu,'appearance','active')); ?>">
		<a href="<?php echo e(base_url('superuser/config/appearance')); ?>" ><i class="icon-droplet position-left"></i> Logo / Icon</a>
	</li>
	<?php /* <li class="<?php echo e(match(@$submenu,'close','active')); ?>">
		<a href="<?php echo e(base_url('superuser/config/close')); ?>"  ><i class=" icon-spam position-left"></i> Maintenance</a>
	</li> */ ?>
</ul>
