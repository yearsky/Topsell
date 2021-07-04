<?php

class CategoryBlogModel extends MY_Model
{
	protected $table 	= "category";
	protected $appends 	= array('url','urlupdate','urldelete');

    public function blog()
	{
		return $this->hasMany('BlogModel', 'id_category', 'id');
	}


	public function getUrlAttribute()
	{			
		return base_url("main/newscategory/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/categoryblog/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/categoryblog/delete/'.$this->id);
	}

}
