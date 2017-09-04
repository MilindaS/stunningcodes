<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Navigation extends MX_Controller {

	function __construct(){
		parent::__construct();
	}
	
	function primary_menu(){
		$this->load->view('primary-menu');
	}
	

        
}
