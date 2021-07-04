<?php

class Migration_Create_table_reporting extends CI_Migration {

	public function up()
	{
		$this->dbforge->add_field([
			'id'			=> [
				'type'			=> 'int',
				'auto_increment'=>	true
			],
			'name'			=> [
				'type'			=> 'text',
			],
			'email'			=> [
				'type'			=> 	'varchar',
				'constraint'	=>	'100'
			],
			'title'			=> [
				'type'			=>	'text',
			],
			'message'		=> [
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
		$this->dbforge->create_table('reporting');
	}

	public function down()
	{
		$this->dbforge->drop_table('reporting');
	}
}