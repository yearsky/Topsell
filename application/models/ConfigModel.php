<?php

class ConfigModel extends MY_Model
{
	protected $table 	= "config";
	protected $appends 	= array('urlupdate','action_bbm','action_sms','action_whatsapp','action_email','action_call','logodir','icondir','logowhitedir','lat','long','urlpricelist');

	public function getUrlpricelistAttribute()
	{
		if (!$this->file_pricelist|| !file_exists("pricelist/{$this->file_pricelist}")) {
			return img_holder();
		}

		return base_url("pricelist/{$this->file_pricelist}");	
	}

	public function getAction_bbmAttribute()
	{
		return 'http://pin.bbm.com/'.$this->bbm;
	}

	public function getAction_smsAttribute()
	{
		return 'sms://'.$this->phone;
	}

	public function getLatAttribute()
	{
		return goExplode($this->gmap,'&&',0);
	}

	public function getLongAttribute()
	{
		return goExplode($this->gmap,'&&',1);
	}

	public function getAction_whatsappAttribute()
	{
		return 'intent://send/'.$this->whatsapp.'#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end';
	}

	public function getAction_emailAttribute()
	{
		return 'mailto:'.$this->email.'?Subject=Hallo ';
	}

	public function getAction_callAttribute()
	{
		return 'tel://'.$this->phone;
	}

	public function getLogodirAttribute()
	{
		if (!$this->logo|| !file_exists("images/website/{$this->logo}")) {
			return img_holder();
		}

		return base_url("images/website/{$this->logo}");	
	}


	public function getIcondirAttribute()
	{
		if (!$this->icon|| !file_exists("images/website/{$this->icon}")) {
			return img_holder();
		}

		return base_url("images/website/{$this->icon}");	
	}

	public function getLogowhitedirAttribute()
	{
		if (!$this->logo_white|| !file_exists("images/website/{$this->logo_white}")) {
			return img_holder();
		}

		return base_url("images/website/{$this->logo_white}");	
	}


	public function getUrlupdateAttribute()
	{
		return base_url('superuser/config/update/'.$this->id);
	}

}
