<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdl_qdash extends CI_Model {

	public $db;
	private $_data;
	private $_sessionOwner;

	function __construct(){
		parent::__construct();
		$this->db = new Cimongo();
		$this->_data['ts'] = array(
								'datetime'=>date('Y-M-d H:i:s'),
								'ts'=>microtime(true)*1000);
	}

	function saveDoc($doc){

		
		$this->_data['user'] = "552e7175e93d38e8408b4567";
		$this->_data['content'] = $doc['content'];
		$this->_data['tags'] = [];
		$this->_data['title'] = 'temporyInput_'.microtime(true);
		
		// log_message('error',json_encode($this->_data['tags']));

		$this->_data['content'] = $doc['content'];
		$this->_data['privacy_toggle'] = false;
		$this->_data['ts']['gts'] = microtime(true)*1000;
		$result = $this->db->insert('documents',$this->_data);
	}
}
