<?php
class Migration_Create_table_config extends CI_Migration {

	public function up()
	{
		$this->dbforge->add_field([
			'id'		=> [
				'type'			=> 'int',
				'auto_increment'=>	true
			],
			'name' => [
				'type'			=>	'VARCHAR',
				'constraint'	=> 255
			],
			'email' => [
				'type'			=>	'VARCHAR',
				'constraint'	=> 255
			],
			'phone' => [
				'type'			=>	'VARCHAR',
				'constraint'	=> 255
			],
			'fax' => [
				'type'			=>	'VARCHAR',
				'constraint'	=> 255
			],
			'contact' => [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'address' => [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'description' => [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'error'	=>	[
				'type'			=>	'text',
			],
			'status'	=>	[
				'type'			=>	'int',
				'default'		=>	0
			],
			'icon' 	=> [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'logo' => [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]
		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('config');
	}

	public function down()
	{
		$this->dbforge->drop_table('config');
	}
}