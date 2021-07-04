@extends('website.template')
@section('title')
	CONTACT US
@endsection

@section('styles')
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
@endsection
@section('script')
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/loaders/blockui.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/extension_blockui.js"></script>
	<script type="text/javascript">
	$("#form-contact").submit(function(e){
		e.preventDefault();

		$.ajax({
				url: 		$("#form-contact").attr("action"),
				method: 	"POST",
				data:  		new FormData(this),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('body'),'<i class="fa fa-circle-o-notch fa-spin fa-fw"></i> Please Wait , Processing','#fff');		
				}
			})
			.done(function(data){
				$('body').unblock();
				sweetAlert({
					title: 	((data.auth==true) ? 'Pesan Terkirim' : "Opps!"),
					text: 	((data.auth==true) ? data.msg : data.msg),
					type: 	((data.auth==true) ? "success" : "error"),
				},
				function(){
					if(data.auth==true){
						redirect("{{base_url('main')}}")
						return;
					}				
				})

			})
			.fail(function() {
			    $('body').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Something Wrong , Please Try Again Later",
					type: 	"error",
				},
				function(){
				
				});
			 })
	})
	</script>
@endsection

@section('content')

<div id="page-title" class="page-title-parallax text-light" data-stellar-background-ratio="0.9" style="background-image: url('{{base_url()}}images/website/banner.jpg')">
	<div class="background-overlay"></div>
	<div class="container">
		<div class="page-title col-md-8">
			<h1 class="text-uppercase text-medium">CONTACT</h1>
		</div>
	</div>
</div>	
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
						<strong>{{$config->name}}</strong><br>
						{{$config->address}}
					</address>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
						{!! $config->opentime !!}
					</address>
					</div>
				</div>

			</div>
			<div class="col-md-4">
				<div class="row m-t-40">
					<div class="col-md-10">
					<address>
					@if($config->email!="")
						<i class="ico fa fa-envelope"></i>
						<a href="mailto:{{$config->email}}?subject=hell%20hayyu">
						{{ $config->email }}
						</a>
					@endif
					@if($config->phone!="")
						<br><i class="ico fa fa-phone"></i>{{ $config->phone }}
					@endif
					@if($config->whatsapp!="")
						<br><i class="ico fa fa-whatsapp"></i>
							{{ $config->whatsapp }}
					@endif
					@if($config->bbm!="")
						<br><i class="ico fa fa-comments"></i>
							{{ $config->bbm }}
					@endif
					@if($config->contact!="")
						<br><i class="ico fa fa-info-circle"></i>
							{{$config->contact}}
					@endif
					</address>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<form id="form-contact" method="post" action="{{base_url('main/contact/submit')}}" >
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="nama">Nama</label>
							<input type="text" name="name" class="form-control" placeholder="Masukkan Nama Anda" required="">
						</div>
						<div class="form-group col-sm-6">
							<label for="email">Email</label>
							<input type="email" name="email" class="form-control" placeholder="Masukkan Email Anda" required="">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="subjek">Subjek</label>
							<input type="text" name="subject" class="form-control" placeholder="Subjek Pesan" required="">
						</div>
						<div class="form-group col-sm-6">
							<label for="email">Telepon</label>
							<input type="text" name="phone" class="form-control" placeholder="Masukkan Telepon Anda" required="">
						</div>
					</div>
					<div class="form-group">
						<label for="pesan">Pesan</label>
						<textarea type="text" name="message" rows="5" class="form-control" placeholder="Masukkan Pesan Anda" required=""></textarea>
					</div>
					<button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> Kirim Pesan</button>
				</form>
				<div class="social-icons m-t-30 social-icons-colored">
					<ul>
	                @foreach($sosmed as $result)
	                  <li class="social-{{$result->type}}"> <a href="{{$result->url}}" target="_blank" title="{{$result->name}}"><i class="fa fa-{{$result->type}}"></i></a>
	                  </li>
	                @endforeach
					</ul>
				</div>
			</div>
			<div class="col-md-6">			
				<h4 class="text-uppercase">Our Store</h4>
				<div class="row m-t-40">
					<div class="col-md-10">

		            <ul class="list list-lines">
		              @foreach($store as $result)
		              <li><strong><a href="{{$result->url}}"> {{$result->name}} </a></strong></li>
		              @endforeach
		            </ul>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
@endsection