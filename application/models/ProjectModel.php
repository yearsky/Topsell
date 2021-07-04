<?php

class ProjectModel extends MY_Model
{
	protected $table 	= "project";
	protected $appends 	= array('url','imagedir');

	public function getImagedirAttribute()
	{
		if (!$this->image || !file_exists("images/project/{$this->image}")) {
			return base_url(img_holder());
		}

		return base_url("images/project/{$this->image}");
	}

	public function getUrlAttribute()
	{			
		return base_url("main/project/detail/{$this->id}/".seo($this->title));
	}
	
    public function gallery()
	{
		return $this->hasMany('ProjectimgModel','id_project','id');
	}

}
