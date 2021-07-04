<?php


class MY_Model extends Illuminate\Database\Eloquent\Model {
	
	public $ci;
	
	function __construct()
	{	
		$this->ci =& get_instance();
		
		/*$connection = $this->capsule->getConnection();
		$connection->beginTransaction();

		$GLOBALS['capsule'] =  $this->capsule;*/
	}

	public function scopeDesc($query)
	{
		return $query->orderBy('id', 'desc');
	}

	public function scopeAsc($query)
	{
		return $query->orderBy('id', 'asc');
	}

}