<?php

class SosmedModel extends MY_Model
{
	protected $table 	= "sosmed";
	protected $appends 	= array('urlupdate','urldelete');

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/sosmed/update/'.$this->id);
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/sosmed/delete/'.$this->id);
	}
}
