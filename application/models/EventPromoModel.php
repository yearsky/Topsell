<?php

class EventPromoModel extends MY_Model
{
	protected $table 	= "eventpromo";
	protected $appends 	= array('imagedir','url','urlupdate','urldelete');

	

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/event/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/event/{$this->image}");	
	}

	public function getUrlAttribute()
	{			
		return base_url("main/event/detail/{$this->id}/".seo($this->name));	
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/event/update/'.$this->id);
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/event/delete/'.$this->id);
	}

	public function scopeEvent($query){
		return $query->where("type",'event');
	}

	public function scopePromo($query){
		return $query->where("type",'promo');
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
