<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdl_auth extends CI_Model {

	public $db;
	private $_data;

	function __construct(){
		parent::__construct();
		$this->db = new Cimongo();
		$this->_data['ts'] = array(
								'datetime'=>date('Y-M-d H:i:s'),
								'ts'=>microtime(true)*1000);
	}

	function doSignin($data){
		$email = $data['email'];
		$password = sha1($data['password']);

		$users = $this->db->where(array('email'=>$email,'auth.password'=>$password))->get('users');
		$result = $users->result_array();
		log_message('error',json_encode(count($result)));
		if(count($result)>0){
			$xid = new MongoId($result[0]['_id']);
			$sess_array = array(
					'id' => (string)$xid,
					'username' => strtolower($result[0]['firstname']),
					'key' => intval(microtime(true))
				);
		   $this->session->set_userdata('logged_in', $sess_array);
		   return $result;
		}else{
			return null;
		}

	}

	function checkEmailAvailability($email){
		$users = $this->db->where(array('email'=>$email))->get('users');
		$result = $users->result_array();
		if(count($result)>0){
		   	return true;
		}else{
			return false;
		}
	}

	function doSignup($data){
		$this->_data['firstname'] = $data['firstname'];
		$this->_data['lastname'] = $data['lastname'];
		$this->_data['email'] = $data['email'];
		$this->_data['auth'] = array(
									'key'=>sha1($data['password'].$data['firstname'].microtime()),
									'privacy_key'=>sha1($data['privacy_code']),
									'password'=>sha1($data['password']),
									);
		$result = $this->db->insert('users',$this->_data);
		if($result){
			return true;
		}
	}



}
