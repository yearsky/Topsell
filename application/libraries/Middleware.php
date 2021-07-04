<?php

class Middleware {

	function __construct() {
		# get the framework isntance
		# this is to load another library within a library :(
		# i literally don't like this way of codeigniter
		$this->ci =& get_instance(); 
		$this->ci->load->library('session');
	}

	public function auth()
	{
		# but save the current state
		if(!$this->ci->session->userdata('auth_id')){
			$this->ci->load->library('session');
			$this->ci->session->set_userdata('catched_location', uri_string());
			redirect('auth/signin');
		}
		
	}

	public function guest()
	{
		# if it is a guest or not authenticated, then redirect to the dashboard
		if ($this->ci->grauth->check()) {
			redirect(base_url('/'));
		}
	}

	public function website($status,$url){
		$config 		= ConfigModel::find(1)->first();
		if($config->status==$status){
			redirect($url);
			return;
		}
	}

	public function access($menu,$redirect=false){
		$id 			= $this->ci->session->userdata('auth_id');
		$all 			= AuthRuleModel::where('id_superuser',$id)->where('menu','all')->first();
		if(isset($all->id)){
			return true;
		}

		$rule 			= AuthRuleModel::where('id_superuser',$id)->where('menu',$menu)->first();

		if(isset($rule->id)){
			return true;
		}
		if($redirect==false){
			return false;	
		}
		
		redirect('superuser');
		return;
	}

	public function printAccess(){
		$id 			= $this->ci->session->userdata('auth_id');
		$access 		= AuthRuleModel::where('id_superuser',$id)->desc()->get();

		$response 		= [];

		foreach ($access as $result) {
			array_push($response, $result->menu);
		}

		return $response;
	}
}