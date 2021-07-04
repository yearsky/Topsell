<?php
use Illuminate\Database\Capsule\Manager as Capsule;
class Maintenance extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->data['config'] 			= ConfigModel::find(1)->first();

		$this->blade->sebarno('ctrl', $this);
		if($this->data['config']->status!=1){
			redirect('main');
			exit;
		}
	}

	public function index()
	{
		$data 						= $this->data;
		echo $this->blade->nggambar('error.Maintenance',$data);	
		return;
		
	}

}
