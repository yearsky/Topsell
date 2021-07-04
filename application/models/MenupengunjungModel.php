<?php

class MenupengunjungModel extends MY_Model
{
	protected $table 	= "menupengunjung";

	public function submenupengunjung()
	{
		return $this->hasMany('SubmenupengunjungModel', 'id_menu','id');
	}

	public function scopeAktif($query){
		return $query->where('aktif','0');
	}
}
