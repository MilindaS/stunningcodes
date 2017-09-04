<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_api');
	}

	function sync(){
		if($this->input->post('do')=='getAllDocs'){
			echo json_encode($this->mdl_api->getAllDocs());
		}
	}
	
	function index(){
		echo 1;
	}
}
