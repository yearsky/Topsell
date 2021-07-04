<?php

class PricelistModel extends MY_Model
{
	protected $table 	= "download_pricelist";
	protected $appends 	= array('url','urldelete','urldownload');


	public function getUrlDownloadAttribute()
	{
		return base_url("main/pricelistdownload/".$this->token);	
	}


	public function getUrlAttribute()
	{			
		return base_url("superuser/pricelist/detail/{$this->id}/".seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/pricelist/detail/'.$this->id);
	}

	public function scopeNotReaded($query){
		return $query->where("readed",0);
	}

}
