$("#form-login").submit(function(e){
	e.preventDefault();
	var block = $("#form-login .panel");
	
	$.ajax({
		url	: base_url+'auth/authentication',
		method : 'POST',
		data : $("#form-login").serialize(),
		beforeSend:function(){
			showBlock($(block),'<i class="icon-spinner4 spinner"></i>','#fff');		
		}
	})
	.done(function(data){
		if (data.auth==false){
			ShowNotif('Login Failed!',data.msg+' refreshing page ...','top-center','bg-danger');
			$("#form-login").find('input').val('');
			$(block).unblock();
			var go	= setTimeout(function(){
				redirect(base_url+'superuser/');
			},2000);
			return;
		}
		ShowNotif('Login Success!','Redirecting . . .. .','top-center','bg-success');

		var go	= setTimeout(function(){
			redirect(base_url+'superuser/');
		},2000);

	})
})