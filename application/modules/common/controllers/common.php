<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Common extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_rename');
	}

	public function header($css_array=null,$js_array=null,$meta_array=null,$meta_og_array=null){
		$data['css_array'] = $css_array;
		$data['js_array'] = $js_array;
		$data['meta_array'] = $meta_array;
		$data['meta_og_array'] = $meta_og_array;
		$this->load->view('header',$data);
	}

	public function footer(){
		$this->load->view('footer');
	}

	public function navigation(){
		$this->load->view('navigation');
	}
}
