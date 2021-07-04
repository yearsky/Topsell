<?php

class ProductImagesModel extends MY_Model
{
	protected $table 	= "product_image";
	protected $appends 	= array('imagedir');


	public function getImagedirAttribute()
	{
		
		if (!$this->image|| !file_exists("images/product/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/product/{$this->image}");	
	}

}
