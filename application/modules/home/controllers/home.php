<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_home');
		$this->load->module('common');
	}

	function index(){
		$this->home_page();
	}

	function home_page(){
		$css_array = array();
		$js_array = array();
		// $this->common->header($css_array,$js_array);
		$this->load->view('home');
		// $this->common->footer();
	}


}
