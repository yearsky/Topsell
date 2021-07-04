<?php

class ProductModel extends MY_Model
{
	protected $table 	= "product";
	protected $appends 	= array('url','urlupdate','urldelete','imagedir');


	public function getImagedirAttribute()
	{
		
		if (!$this->image|| !file_exists("images/product/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/product/{$this->image}");	
	}

    public function category()
	{
		return $this->hasOne('CategoryProductModel', 'id', 'id_category');
	}


	public function images(){
		return $this->hasMany('ProductImagesModel','id_product','id');
	}

	public function getUrlAttribute()
	{			
		return base_url("main/product/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/product/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/product/delete/'.$this->id);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
