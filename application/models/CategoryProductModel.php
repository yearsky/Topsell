<?php

class CategoryProductModel extends MY_Model
{
	protected $table 	= "category_product";
	protected $appends 	= array('url','urlupdate','urldelete');

    public function product()
	{
		return $this->hasMany('ProductModel', 'id_category', 'id');
	}


	public function getUrlAttribute()
	{			
		return base_url("main/productcategory/{$this->id}/".seo($this->name)."/page/0");
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/categoryproduct/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/categoryproduct/delete/'.$this->id);
	}

}
