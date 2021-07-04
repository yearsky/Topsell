<?php

class AuthRuleModel extends MY_Model
{
	protected $table 	= "superuser_rule";

    public function auth()
	{
		return $this->hasOne('AuthModel', 'id', 'id_superuser');
	}

	public function scopeMenu($query,$status){
		return $query->whereIn("menu",$status);
	}

}
