@extends('admin.template')

@section('title')
Administrasi - Pengaturan Website
@endsection

@section('content')
<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Pengaturan</span> - Administrasi</h4>
		</div>

	</div>

	<div class="breadcrumb-line">
		<ul class="breadcrumb">
			<li><a href="{{base_url('superuser/config')}}"><i class="icon-stack2 position-left"></i> Pengaturan</a></li>
			<li class="active">Pengaturan Website</li>
		</ul>
	</div>
</div>

<div class="content">
	<h6 class="content-group text-semibold">
		<span class="text-primary"><i class="icon-magazine"></i> Pengaturan</span> Tentang Website
		<small class="display-block">Mengatur Konten Tentang Website Anda</small>
	</h6>
	<div class="row">
		<div class="col-lg-12">
			<div class="tabbable tab-content-bordered">
				@include('admin.config.pieces')
				<div class="tab-content ">
					<div class="tab-pane active">
						<div  style="padding:20px;">
                			<form id="form-config" class="form-horizontal" action="{{base_url('superuser/config/aboutsave')}}" method="post">
								<div class="form-group">
									<label class="col-lg-2 control-label">Nama Website <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<input class="form-control" type="text" placeholder="Nama Website" name="name" value="{{ $config->name }}" required>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Deskripsi <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<textarea  id="editor-full" rows="2"  name="description" cols="2">{!! $config->description !!}</textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Alamat <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<textarea rows="4" cols="4" class="form-control"  name="address" placeholder="Alamat Disini">{{ $config->address }}</textarea>
										<input type="hidden" name="gmap" value="{{$config->gmap}}" required="">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Jam Buka <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<textarea  id="editor-full-2" rows="2"  name="opentime" cols="2">{!! $config->opentime !!}</textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label">Cari Lokasi Anda <span class="text-danger"><b>*</b></span></label>
									<div class="col-lg-10">
										<div class="form-group">
											<input id="pac-input" class="form-control" name="gmap_query" type="text" placeholder="Cari Lokasi Anda">
										</div>
										<div class="form-group">
											<div id="map" class="map-container map-basic"></div>
										</div>
									</div>
								</div>

								<div class="text-right">
									<button type="button" onclick="submitThis()" class="btn btn-primary">Simpan Pengaturan <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
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
<script type="text/javascript" src="{{base_url()}}admin_assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	var editorsmall = false;
</script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/editor_ckeditor.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript" src="{{base_url()}}admin_assets/js/plugins/forms/styling/switch.min.js"></script>
<script type="text/javascript">

	function submitThis(){
			 for ( instance in CKEDITOR.instances ) {
		        CKEDITOR.instances[instance].updateElement();
		    }
			var formData = new FormData( $("#form-config")[0] );
			$.ajax({
				url: 		$("#form-config").attr('action'),
				method: 	"POST",
				data:  		new FormData($("#form-config")[0]),
          		processData: false,
          		contentType: false,
				beforeSend: function(){
					blockMessage($('#form-config'),'Tunggu , Sedang Menyimpan Konfigurasi','#fff');		
				}
			})
			.done(function(data){

				$('#form-config').unblock();
				sweetAlert({
					title: 	((data.auth==false) ? "Opps!" : "Konfigurasi Di Simpan"),
					text: 	data.msg,
					type: 	((data.auth==false) ? "error" : "success"),
				},
				function(){
					if(data.auth!=false){
						redirect("{{base_url('superuser/config')}}");		
						return;
					}
					return;
				});

			})
			.fail(function() {
			    $('#form-config').unblock();
				sweetAlert({
					title: 	"Opss!",
					text: 	"Ada Yang Salah! , Silahkan Coba Kembali",
					type: 	"error",
				},
				function(){
					redirect("{{base_url('superuser/config')}}");
				});
			 })
			
		}
</script>
<script>
function initMap() {
  var latlng 	= {lat: Number('{{goExplode($config->gmap,'&&',0)}}'), lng: Number('{{goExplode($config->gmap,'&&',1)}}')};
  var map = new google.maps.Map(document.getElementById('map'), {
    center: latlng ,
    zoom: 20
  });


  var geocoder = new google.maps.Geocoder;

  var input = /** @type {!HTMLInputElement} */(
      document.getElementById('pac-input'));

  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.bindTo('bounds', map);

  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
    map: map,
    draggable: true,
    animation: google.maps.Animation.DROP,
    anchorPoint: new google.maps.Point(0, -29),
    position: {lat: Number('{{goExplode($config->gmap,'&&',0)}}'), lng: Number('{{goExplode($config->gmap,'&&',1)}}')},
  });

   geocoder.geocode({'location': latlng}, function(results, status) {
      if (status === 'OK') {
        if (results[1]) {
          marker.setPosition(latlng);
          infowindow.setContent('<b>Memilih Area Ini</b><br>'+results[0].formatted_address);
          console.log(results);
          $("#pac-input").val(results[0].formatted_address);
          infowindow.open(map, marker);
        } else {
          infowindow.setContent('<b>Memilih Area Ini</b><br>');
          infowindow.open(map, marker);
        }
      } else {
        window.alert('Geocoder failed due to: ' + status);
      }
    });

  marker.addListener('dragend', function(evt){
  	infowindow.close();
    marker.setVisible(false);

    marker.setVisible(true);

    var latlng = {lat: evt.latLng.lat(), lng: evt.latLng.lng()};
    geocoder.geocode({'location': latlng}, function(results, status) {
      if (status === 'OK') {
        if (results[1]) {
          marker.setPosition(latlng);
          infowindow.setContent('<b>Pilih Area Ini</b><br>'+results[0].formatted_address);
          infowindow.open(map, marker);
          $("#pac-input").val(results[0].formatted_address);
          $("input[name=gmap]").val(evt.latLng.lat()+'&&'+evt.latLng.lng());
        } else {
          infowindow.setContent('<b>Pilih Area Ini</b><br>');
          infowindow.open(map, marker);
          $("input[name=gmap]").val(evt.latLng.lat()+'&&'+evt.latLng.lng());
        }
      } else {
        window.alert('Geocoder failed due to: ' + status);
      }
    });

    /*infowindow.setContent('<div><strong>Pilih Area Ini</strong><br>');
    infowindow.open(map, marker);*/



  });




  autocomplete.addListener('place_changed', function() {
    infowindow.close();
    marker.setVisible(false);
    var place = autocomplete.getPlace();
    if (!place.geometry) {
      window.alert("Autocomplete's returned place contains no geometry");
      return;
    }

    // If the place has a geometry, then present it on a map.
    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);  // Why 17? Because it looks good.
    }

    marker.setIcon(/** @type {google.maps.Icon} */({
      url: place.icon,
      size: new google.maps.Size(71, 71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(35, 35)
    }));
    marker.setPosition(place.geometry.location);
    marker.setVisible(true);

    var address = '';
    if (place.address_components) {
      address = [
        (place.address_components[0] && place.address_components[0].short_name || ''),
        (place.address_components[1] && place.address_components[1].short_name || ''),
        (place.address_components[2] && place.address_components[2].short_name || '')
      ].join(' ');
    }

    $("input[name=gmap]").val(place.geometry.location.lat()+'&&'+place.geometry.location.lng());
    infowindow.setContent('<b>Pilih Area Ini</b><br>'+address);
    infowindow.open(map, marker);
  });
}

</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBy_G0H8GDS521QaVAYPk_pinqKLqRdj3M&libraries=places&callback=initMap"
    async defer></script>
@endsection
