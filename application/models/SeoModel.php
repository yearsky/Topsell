<?php

class SeoModel extends MY_Model
{
	protected $table 	= "seo";
	protected $appends 	= array('urlupdate','imagedir');

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/website/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/website/{$this->image}");	
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/seo/save/'.$this->id);
	}

}
