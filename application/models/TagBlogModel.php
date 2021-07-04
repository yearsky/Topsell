<?php

class TagBlogModel extends MY_Model
{
	protected $table 	= "tag_blog";

    public function tag()
	{
		return $this->hasOne('TagModel', 'id', 'id_tag');
	}

	public function blog()
	{
		return $this->hasOne('BlogModel', 'id', 'id_blog');
	}


}
