<?php

class ServiceModel extends MY_Model
{
	protected $table 	= "service";
	protected $appends 	= array('imagedir','url','urlupdate','urldelete');

	

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/service/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/service/{$this->image}");	
	}

	public function getUrlAttribute()
	{			
		return base_url("main/service/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/service/update/'.$this->id);
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/service/delete/'.$this->id);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
