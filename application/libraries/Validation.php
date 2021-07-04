<?php 

class Validation  {

	public static function check($rules,$type){
		if($type=="post"){
			$v = new Valitron\Validator($_POST);
		}
		else {
			$v = new Valitron\Validator($_GET);		
		}

		$response['auth'] 		= true;
		$response['msg'] 		= 'success';

		$v->rules($rules);
		if(!$v->validate()){

			$response['auth']	= false;

			foreach ($v->errors() as $key => $value) {
				$response['msg'] = $value[0];
				break;
			}

			return goObject($response);
		}

		return goObject($response);
	}

}