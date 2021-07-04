<?php

class Grauth {

	# this is for the users rule
	private $rules = [
		'admin'			=>	[
			['ndelok-admin-page', null], 
			['ngapus-member', null], 
			['ngedit-member', null], 
			['ngapus-review', null], 
			['ngedit-review', null], 
			['ngedit-comment', null],
			['ngapus-comment', null]
		],
		'member'		=>	[
			['nggawe-review', null], 
			['ngedit-review', true], 
			['ngapus-review', true], 
			['nggawe-comment', null], 
			['ngedit-comment', true],
			['ngapus-comment', true]
		],
		'resto_owner'	=>	[
			['nggawe-resto', null], 
			['ngedit-resto', true], 
			['ngapus-resto', true], 
			['nggawe-comment', null], 
			['ngedit-comment', true],
			['ngapus-comment', true]
		]
	];

	# check for the login status
	public function check()
	{
		if (isset($_SESSION['currentUser'])) {
			return true;
		}

		return false;
	}

	# login
	public function auth($username, $password)
	{
		$user = Query::table('users')->orWhere('email', $username)->first();

		if ($user && $user->password == md5(md5($password))) {
			# store to the session
			# but only save the id
			$_SESSION['currentUser'] = $user->id;
			return true;
		}

		return false;
	}

	# login by user model
	public function authByUser($user)
	{
		$_SESSION['currentUser'] = $user->id;
		return true;
	}

	# get the current user
	public function user()
	{
		if ($this->check()) {
			$user = UserModel::with('reviews')->find($_SESSION['currentUser']);
			if (!$user) {
				return $this->logout();
			}

			return $user;
		}
		return null;
	}

	# get promo data for notif
	public function promo(){
		if ($this->check()) {
			$promo = PromoModel::with('promodataactive')->mine()->first();
			return $promo;
		}

		return null;
	}

	public function logout()
	{
		if ($this->check()) {
			unset($_SESSION['currentUser']);
		}
	}

	public function isok($action, $resource = null)
	{
		if ($this->check()) {
			$allowed = false;

			# check if the action exists
			foreach ($this->rules[$this->user()->user_role] as $rule) {
				if ($rule[0] == $action) {
					# check if that rule need a resource and the resource is not null
					if ($rule[1]) {
						if ($resource) {
							# check if the resource->user_id is the same as the auth id
							if ($resource->user_id == $this->user()->id) {
								$allowed = true;
							}
						}
					}
					# if the action doesn't need a resource but the action does exists, then return true
					else {
						$allowed = true;
					}
				}
			}

			return $allowed;
		}

		return false;
	}

	public function coba(){
		return "asd";
	}

}