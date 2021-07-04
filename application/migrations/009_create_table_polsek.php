<?php
class Migration_Create_table_polsek extends CI_Migration {

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
			'address' => [
				'type'			=>	'TEXT',
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
			'cover' => [
				'type'			=>	'TEXT',
			],
			'description' => [
				'type'			=>	'LONGTEXT',
				'null'			=>	true
			],
			'status'	=>	[
				'type'			=>	'int',
				'default'		=>	0
			],
			'created_at'	=> [
				'type'			=>	'TIMESTAMP',
			],
			'updated_at'	=> [
				'type'			=>	'TIMESTAMP',
			]
		]);

		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table('polsek');
	}

	public function down()
	{
		$this->dbforge->drop_table('polsek');
	}
}