<?php

class SubscribeModel extends MY_Model
{
	protected $table 	= "subscribe";
	protected $appends 	= array('urldelete');


	public function getUrldeleteAttribute()
	{
		return base_url('superuser/subscribe/delete/'.$this->id);
	}

}
