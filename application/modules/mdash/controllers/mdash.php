<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdash extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_mdash');
		$this->load->module('auth');
		$this->load->module('common');
		$this->auth->isAuthenticated();
	}

	function index(){
		$css_array = array('bootstrap2-toggle.min','component','perfect-scrollbar.min','jquery.qtip.min','bootstrap-datetimepicker.min','timeline.min.css');
		$js_array = array('ckeditor/ckeditor.js','ckeditor/adapters/jquery.js','tabSelect.js');
		$this->common->header($css_array,$js_array);
		$data['tags'] = '';
		$this->load->view('mdash',$data);
		$this->common->footer();
	}



}
