<?php

class TestimoniModel extends MY_Model
{
	protected $table 	= "testimoni";
	protected $appends 	= array('imagedir','url','urlupdate','urldelete');

	

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/testimoni/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/testimoni/{$this->image}");	
	}

	public function getUrlAttribute()
	{			
		return base_url("main/testimoni/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/testimoni/update/'.$this->id);
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/testimoni/delete/'.$this->id);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
