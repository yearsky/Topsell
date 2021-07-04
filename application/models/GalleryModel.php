<?php

class GalleryModel extends MY_Model
{
	protected $table 	= "gallery";
	protected $appends 	= array('imagedir','videodir','url','urlupdate','urldelete');


	public function getImagedirAttribute()
	{
		if($this->type=="image"){
			if (!$this->image|| !file_exists("images/gallery/{$this->image}")) {
				return img_holder();
			}
			return base_url("images/gallery/{$this->image}");	
		}
		else{
			return youtube_preview($this->video);
		}
	}

	public function getVideodirAttribute()
	{
		return youtube_iframe($this->video);
	}

	public function getUrlAttribute()
	{			
		return base_url("main/gallery/detail/{$this->id}/".seo($this->name));
	}

	public function getUrlupdateAttribute()
	{
		return base_url('superuser/gallery/update/'.$this->id.'/'.seo($this->name));
	}

	public function getUrldeleteAttribute()
	{
		return base_url('superuser/gallery/delete/'.$this->id);
	}

	public function scopeType($query,$type){
		return $query->where("type",$type);
	}

	public function scopeNotDraft($query){
		return $query->where("status",0);
	}

}
