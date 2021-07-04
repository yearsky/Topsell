<?php

class SubmenupengunjungModel extends MY_Model
{
	protected $table 	= "submenupengunjung";

    public function menupengunjung()
	{
		return $this->hasOne('MenupengunjungModel', 'id', 'id_menu');
	}

	public function scopeAktif($query){
		return $query->where("aktif",0);
	}

}
