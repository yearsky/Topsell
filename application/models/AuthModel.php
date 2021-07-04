<?php

class AuthModel extends MY_Model
{
	protected $table 	= "superuser";
	protected $appends 	= array('imagedir','urlupdate','urldelete');

	

    public function rule()
	{
		return $this->hasMany('AuthRuleModel', 'id_superuser', 'id');
	}

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/admin/{$this->image}")) {
			return img_holder('profile');
		}

		return base_url("images/admin/{$this->image}");	
	}


	public function getUrlupdateAttribute()
	{
		return base_url('superuser/admin/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/admin/delete/'.$this->id);
	}

	public function scopeStatus($query,$status){
		return $query->where("status",$status);
	}

}
