@extends('website.template')
@section('title')
	PRICE LIST
@endsection



@section('content')
<div id="core" class="core-bg-1">

<!-- PAGE HEADER : begin -->
<div id="page-header">
	<div class="container">
		<h1>Price List</h1>
		<ul class="breadcrumbs">
			<li><a href="{{base_url()}}">Home</a></li>
			<li>Price List</li>
		</ul>
	</div>
</div>
<!-- PAGE HEADER : begin -->

<div class="container">

	<!-- PAGE CONTENT : begin -->
	<div id="page-content">
		<div class="various-content">
			<!-- FORM SECTION : begin -->
			<section>

				<h2>Download Our Price List File</h2>

				<div class="row">
					<div class="col-lg-8">

						<!-- CONTACT FORM : begin -->
						<form id="form-pricelist" class="default-form" action="{{base_url('main/pricelist/submit')}}" method="post" >
							<input type="hidden" name="contact-form">

							<!-- FORM VALIDATION ERROR MESSAGE : begin -->
							<p class="c-alert-message m-warning m-validation-error" style="display: none;"><i class="ico fa fa-exclamation-circle"></i>Please fill in all required (*) fields.</p>
							<!-- FORM VALIDATION ERROR MESSAGE : end -->

							<!-- SENDING REQUEST ERROR MESSAGE : begin -->
							<p class="c-alert-message m-warning m-request-error" style="display: none;"><i class="ico fa fa-exclamation-circle"></i>There was a connection problem. Try again later.</p>
							<!-- SENDING REQUEST ERROR MESSAGE : end -->

							<div class="row">
								<div class="col-sm-6">

									<!-- NAME FIELD : begin -->
									<div class="form-field">
										<label for="contact-name">Your Name <span>*</span></label>
										<input id="contact-name" name="name" class="m-required">
									</div>
									<!-- NAME FIELD : end -->

									<!-- EMAIL FIELD : begin -->
									<div class="form-field">
										<label for="contact-email">Your Email Address <span>*</span></label>
										<input id="contact-email" name="email" class="m-required m-email">
									</div>
									<!-- EMAIL FIELD : end -->

									<!-- PHONE FIELD : begin -->
									<div class="form-field">
										<label for="contact-phone">Your Phone Number</label>
										<input id="contact-phone" name="phone" class="m-required m-phone">
									</div>
									<!-- PHONE FIELD : end -->

																		<!-- SUBMIT BUTTON : begin -->
									<div class="form-field">
										<button class="submit-btn c-button" type="submit" data-label="Download Price List" data-loading-label="preparing file ....">Download Now</button>
									</div>

								</div>
							</div>

						</form>
						<!-- CONTACT FORM : end -->

					</div>
				</div>

			</section>
			<!-- FORM SECTION : end -->

		</div>
	</div>
	<!-- PAGE CONTENT : end -->

</div>

</div>

<!-- CORE : end -->

<!-- BOTTOM PANEL : begin -->
<!-- BOTTOM PANEL : end -->
@endsection


@section('script')
<script type="text/javascript">
	var form = $("#form-pricelist"),
	submitBtn = form.find( '.submit-btn' );

	form.submit(function(e){
		e.preventDefault();

		if ( ! submitBtn.hasClass( 'm-loading' ) ) {

			// CLEAN OLD MESSAGES
			form.find( '.c-alert-message.m-success, .c-alert-message.m-phpvalidation-error' ).slideUp( 300, function(){
				$(this).remove();
			});

			// FORM NOT VALID
			if ( ! form.lvIsFormValid() ) {
				form.find( 'p.c-alert-message.m-warning.m-validation-error' ).slideDown(300);
				return false;
			}
			// FORM VALID
			else {

				submitBtn.addClass( 'm-loading' ).attr( 'data-label', submitBtn.text() ).text( submitBtn.data( 'loading-label' ) );

				// AJAX REQUEST
				$.ajax({
					type: 'POST',
					url: form.attr( 'action' ),
					data: form.serialize(),
					success: function( data ){
						var auth 	= data.auth;

						if(data.auth==true){
							form.find( '.c-alert-message.m-validation-error' ).hide();
							form.prepend( data.msg.html );
							form.find( '.c-alert-message.m-success, .c-alert-message.m-phpvalidation-error' ).slideDown(300);
							submitBtn.removeClass( 'm-loading' ).text( submitBtn.attr( 'data-label' ) );

							// RESET ALL INPUTS							
							form.find( 'input, textarea' ).each( function() {
								$(this).val( '' );
							});
							window.location = data.msg.download;

						}else{
							form.find( '.c-alert-message.m-validation-error' ).slideUp(300);
							form.find( '.c-alert-message.m-request-error' ).slideDown(300);
							submitBtn.removeClass( 'm-loading' ).text( submitBtn.attr( 'data-label' ) );
						}

						
					},
					error: function(){
						form.find( '.c-alert-message.m-validation-error' ).slideUp(300);
						form.find( '.c-alert-message.m-request-error' ).slideDown(300);
						submitBtn.removeClass( 'm-loading' ).text( submitBtn.attr( 'data-label' ) );
					}
				});

			}

		}
	});
</script>
@endsection