<?php

class Migration_Create_table_auth extends CI_Migration {

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
			'username'		=> [
				'type'			=>	'VARCHAR',
				'constraint'	=>	'100'
			],
			'password'		=>	[
				'type'			=>	'text',
			],
			'email'			=>	[
				'type'			=>	'VARCHAR',
				'constraint'	=>	'100'
			],
			'privileges'	=>	[
				'type'			=>	'ENUM("superuser", "admin", "user","guest")',
				'default'		=>	'user'
			],
			'lastlog'		=> [
				'type'			=>	'TIMESTAMP',
			],
			'ipaddress'		=> [
				'type'			=>	'varchar',
				'constraint'	=> 	'60'
			],
			'status'		=> [
				'type'			=>	'int' // 0 aktif 1 block
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]

		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('auth');
	}

	public function down()
	{
		$this->dbforge->drop_table('auth');
	}
}