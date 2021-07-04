<?php

class SliderModel extends MY_Model
{
	protected $table 	= "slider";
	protected $appends 	= array('imagedir','urlupdate','urldelete');


	public function getImagedirAttribute()
	{

		if (!$this->image|| !file_exists("images/slider/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/slider/{$this->image}");	
	}


	public function getUrlupdateAttribute()
	{
		return base_url('superuser/slider/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/slider/delete/'.$this->id);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
