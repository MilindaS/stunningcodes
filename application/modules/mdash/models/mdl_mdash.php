<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdl_mdash extends CI_Model {

	public $db;
	private $_data;
	private $_sessionOwner;

	function __construct(){
		parent::__construct();
		$this->db = new Cimongo();
		$this->_data['ts'] = array(
								'datetime'=>date('Y-M-d H:i:s'),
								'ts'=>microtime(true)*1000);
		$this->_sessionOwner = $this->session->userdata( 'logged_in');
	}

	
}
