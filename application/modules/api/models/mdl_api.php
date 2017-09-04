<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdl_api extends CI_Model {

	public $db;
	private $_data;

	function __construct(){
		parent::__construct();
		$this->db = new Cimongo();
		$this->_data['ts'] = array(
								'datetime'=>date('Y-M-d H:i:s'),
								'ts'=>microtime(true)*1000);
		$this->_sessionOwner = $this->session->userdata( 'logged_in');
	}

	function getAllDocs(){
		$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->order_by(array("ts.gts"=>"desc"))->get('documents');
		$result = $docs->result_array();
		return $result;
	}



}
