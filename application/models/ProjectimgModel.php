<?php

class ProjectimgModel extends MY_Model
{
	protected $table 	= "projectimg";
	protected $appends 	= array('imagedir');

    public function project()
	{
		return $this->hasOne('ProjectModel','id','id_project');
	}

	public function getImagedirAttribute()
	{
		if (!$this->image || !file_exists("images/project/{$this->image}")) {
			return base_url(img_holder());
		}

		return base_url("images/project/{$this->image}");
	}

	public function scopeDetail($query,$id){
		return $query->where("id_project",$id);
	}
}
