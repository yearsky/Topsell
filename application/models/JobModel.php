<?php

class JobModel extends MY_Model
{
	protected $table 	= "job_position";
	protected $appends 	= array('imagedir');

	

	public function getImagedirAttribute()
	{
		if (!$this->image|| !file_exists("images/job/{$this->image}")) {
			return img_holder();
		}

		return base_url("images/job/{$this->image}");	
	}

}
