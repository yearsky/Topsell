<?php
class Api extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		

		$this->data['config'] 				= ConfigModel::find(1);
		$this->data['sosmed']				= SosmedModel::find(1);
		$this->data['menu']					= "home";

		$this->blade->sebarno('ctrl', $this);

		$key 	= 'hayyu';

		$rules = [
				    'required' 	=>	[
				    					['key']
				    				]
				];
				
		$validate 	= Validation::check($rules,'post');

		if(!$validate->auth){
			echo goResult(false,$validate->msg);
			return;
		}

		if($key!==DefuseLib::decrypt($this->input->post('key'))){
			echo goResult(false,"Invalid Api Key");
			exit();
		}
		
	}

	public function index(){
		echo "connected";
	}


	
}
