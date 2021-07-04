<?php

class Migration_Create_table_tupoksi extends CI_Migration {

	public function up()
	{
		$this->dbforge->add_field([
			'id'			=> [
				'type'			=> 'int',
				'auto_increment'=>	true
			],
			'name'			=> [
				'type'			=>	'text',
			],
			'description'		=> [
				'type'			=>	'text',
			],
			'cover'		=>	[
				'type'			=>	'text',
			],
			'view'			=>	[
				'type'			=>	'int',
			],
			'status'		=> [
				'type'			=>	'int' // 0 aktif 1 draft
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]

		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('tupoksi');
	}

	public function down()
	{
		$this->dbforge->drop_table('tupoksi');
	}
}