<?php

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->data['config'] 			= ConfigModel::find(1)->first();
		
		$this->blade->sebarno('ctrl', $this);
		$this->middleware->website(1,'maintenance');
	}

	public function index()
	{

		if($this->session->userdata('auth')){
			redirect('superuser');
		}

		redirect('auth/signin');
	}

	public function signin()
	{

		if($this->session->userdata('auth')){
			redirect('superuser');
		}

		$data 		= $this->data;
		echo $this->blade->nggambar('admin.login',$data);
		
	}

	public function authentication(){
		
		if (!$this->input->is_ajax_request()) {
		   exit('No direct script access allowed');
		}

		if($this->session->userdata('auth')){
			echo goResult(false,"Anda Telah Masuk Ke Control Panel");
			return;
		}

		$rules = [
				    'required' 	=>	[
				    					['username'],
				    					['password'],
				    				],
				    'lengthMin'	=>	[
				    					['password',8],['username',5]
				    				]
				];

		$validate 	= Validation::check($rules,'post');

		if(!$validate->auth){
			echo goResult(false,$validate->msg);
			return;
		}

		$where 	= array(
					'username' 	=> $this->input->post('username'),
				  );

		$auth	= AuthModel::where($where)->first();

		if(!isset($auth->id)){
			echo goResult(false,"Opps! Username Tidak Di Temukan");
			return;
		}

		if(DefuseLib::decrypt($auth->password) !== $this->input->post('password')){
			echo goResult(false,"Opps! Maaf Password Anda Tidak Cocok");
			return;
		}

		if($auth->status=="blocked"){
			echo goResult(false,"Opps! Maaf Akun Anda Di Blokir");
			return;
		}

		$auth->lastlog 		= date('Y-m-d H:i:s ');
		$auth->ipaddress 	= $this->input->ip_address();
		$auth->save();

		$newdata = array(
						   'auth'			=>	TRUE,
						   'auth_id'		=> 	$auth->id
               			);

		$this->session->set_userdata($newdata);

		echo goResult(true,"Ok! , autentikasi benar");
		return;
	}

	public function signout(){

		if(!$this->session->userdata('auth')){
			redirect('auth');
			return;
		}

	   	$this->session->unset_userdata('auth');
	   	$this->session->unset_userdata('auth_id');
	   	$this->session->unset_userdata('access');
		redirect('auth');
	}

}