<?php

class BlogModel extends MY_Model
{
	protected $table 	= "blog";
	protected $appends 	= array('imagedir','url','urlupdate','urldelete');

	

    public function category()
	{
		return $this->hasOne('CategoryBlogModel', 'id', 'id_category');
	}

	public function tags()
	{
		return $this->hasMany('TagBlogModel', 'id_blog', 'id');
	}

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/blog/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/blog/{$this->image}");	
	}

	public function getUrlAttribute()
	{			
		return base_url("main/news/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/blog/update/'.$this->id);
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/blog/delete/'.$this->id);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
