<?php

class TagModel extends MY_Model
{
	protected $table 	= "tag";
	
	protected $appends 	= array('url','urlupdate','urldelete');

    public function tags()
	{
		return $this->hasMany('TagBlogModel', 'id_tag', 'id');
	}

	public function getUrlAttribute()
	{			
		return base_url("main/newstag/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/tag/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/tag/delete/'.$this->id);
	}

}
