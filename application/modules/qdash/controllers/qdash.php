<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Qdash extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_qdash');
		$this->load->module('auth');
		$this->load->module('common');
	}

	function index(){
		$css_array = array('qdash.css','bootstrap2-toggle.min','component','perfect-scrollbar.min','slick','slick-theme','jquery.qtip.min','bootstrap-datetimepicker.min');
		$js_array = array('ckeditor/ckeditor.js','ckeditor/adapters/jquery.js','tabSelect.js');
		$this->common->header($css_array,$js_array);
		$this->load->view('dash');
		$this->common->footer();
	}

	function saveDoc(){
		try{
			// log_message('error',json_encode(($this->input->post())));
			// exit();
			$result = $this->mdl_qdash->saveDoc($this->input->post());
			redirect(BASEURL.'qdash', 'refresh');
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

}
