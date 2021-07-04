@extends('admin.template')

@section('title')
Dashboard - Administrasi
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">	
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Dashboard</span> - Administrasi</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('administrasi')}}"><i class="icon-home2 position-left"></i> Dashboard</a></li>
			<li class="active">Selamat Datang - {{ucwords($ctrl->session->userdata('auth_name'))}}</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-user-tie position-left"></i></span> Selamat Datang Di Control Panel Website Anda
		<small class="display-block">
			Sistem ini berguna mengelola keseluruhan data pada website anda sesuai dengan hak akses dari akun administrasi anda
		</small>
	</h6>
	
   
	<!-- /main charts -->

	<!-- Footer -->

<!-- /footer -->
</div>

@endsection