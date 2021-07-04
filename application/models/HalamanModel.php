<?php

class HalamanModel extends MY_Model
{
	protected $table 	= "halamanstatis";
	protected $appends 	= array('coverdir');


	public function getCoverdirAttribute()
	{
		if (!$this->cover || !file_exists("images/halamanstatis/{$this->cover}")) {
			return img_holder();
		}

		return base_url("images/halamanstatis/{$this->cover}");
	}
}
