<?php

class InboxModel extends MY_Model
{
	protected $table 	= "inbox";
	protected $appends 	= array('url','urlupdate','urldelete');

	public function getUrlAttribute()
	{			
		return base_url("superuser/inbox/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/inbox/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/inbox/delete/'.$this->id);
	}

	public function scopeNotReaded($query){
		return $query->where("readed",0);
	}

}
