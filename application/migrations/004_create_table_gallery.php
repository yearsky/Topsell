<?php

class Migration_Create_table_gallery extends CI_Migration {

	public function up()
	{
		$this->dbforge->add_field([
			'id'			=> [
				'type'			=> 'int',
				'auto_increment'=>	true
			],
			'title'			=> [
				'type'			=>	'text',
			],
			'description'	=> [
				'type'			=>	'text',
			],
			'image'			=> [
				'type'			=>	'text',
				'null'			=>	true
			],
			'video'			=> [
				'type'			=>	'text',
				'null'			=>	true
			],
			'view'			=>	[
				'type'			=>	'int',
			],
			'type'			=> [
				'type'			=>	'ENUM("video","picture")',
				'default'		=>	'picture'
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]

		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('gallery');
	}

	public function down()
	{
		$this->dbforge->drop_table('gallery');
	}
}