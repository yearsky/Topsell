<?php

class PartnershipModel extends MY_Model
{
	protected $table 	= "partnership";
	protected $appends 	= array('imagedir','urlupdate','urldelete');


	public function getImagedirAttribute()
	{

		if (!$this->image|| !file_exists("images/partner/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/partner/{$this->image}");	
	}


	public function getUrlupdateAttribute()
	{
		return base_url('superuser/partnership/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/partnership/delete/'.$this->id);
	}

}
