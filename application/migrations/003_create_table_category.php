<?php

class Migration_Create_table_category extends CI_Migration {

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
			'description'	=> [
				'type'			=>	'text',
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]

		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('category');
	}

	public function down()
	{
		$this->dbforge->drop_table('category');
	}
}