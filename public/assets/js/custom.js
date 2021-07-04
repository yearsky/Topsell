/* Add your custom JavaScript code */
$(document).ready(function() {
	jQuery("#widget-contact-form").validate({
		submitHandler: function(form) {
			jQuery(form).ajaxSubmit({
				success: function(text) {
					if (text.response == 'success') {
						$.notify({
							message: "Email Anda <strong>telah dikirim!</strong>"
						}, {
							type: 'success'
						});
						$(form)[0].reset();
					} else {
						$.notify({
							message: text.message
						}, {
							type: 'danger'
						});
					}
				}
			});
		}
	});
});