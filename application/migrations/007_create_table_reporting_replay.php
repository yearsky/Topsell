<?php

class Migration_Create_table_reporting_replay extends CI_Migration {

	public function up()
	{
		$this->dbforge->add_field([
			'id'			=> [
				'type'			=> 'int',
				'auto_increment'=>	true
			],
			'id_reporting'	=> [
				'type'			=> 'int',
			],
			'name'			=> [
				'type'			=> 'text',
			],
			'email'			=> [
				'type'			=> 	'varchar',
				'constraint'	=>	'100'
			],
			'message'			=> [
				'type'			=>	'text',
			],
			'auth'			=> [
				'type'			=>	'int' // 0 anon 1 admin
			],
			'status'		=> [
				'type'			=>	'int' // 0 aktif 1 bloced
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]

		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('reporting_replay');
	}

	public function down()
	{
		$this->dbforge->drop_table('reporting_replay');
	}
}