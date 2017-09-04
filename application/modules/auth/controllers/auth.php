<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_auth');
		$this->load->module('common');
	}
	function index(){
		$this->signin_page();
	}

	function signin(){
		$css_array = array('login.css');
		$js_array = array();
		$this->common->header($css_array,$js_array);
		$this->load->view('signin');
		$this->common->footer();
	}

	function signup(){
		$css_array = array();
		$js_array = array();
		$this->common->header($css_array,$js_array);
		$this->load->view('signup');
		$this->common->footer();
	}

	function checkEmailAvailability(){
		try{
			$result = $this->mdl_auth->checkEmailAvailability($this->input->post('email'));
			if(($result)){
				echo "false";
			}else{
				echo "true";
			}
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function doSignin(){

		try{
			$result = $this->mdl_auth->doSignin($this->input->post());
			
			if(is_null($result)){
				$type = 'fail';
			}else{
				$type = 'success';
			}
			$return  = 	array('type'=>$type,
						'data'=>$result,
						'msg'=>'<i class="ion-android-warning"></i>&nbsp;&nbsp;Signin Failed !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function doSignup(){
		try{
			$result = $this->mdl_auth->doSignup($this->input->post());
			$return  = 	array('type'=>'success',
						'data'=>$result,
						'msg'=>'<i class="ion-checkmark-circled"></i>&nbsp;&nbsp;Document Saved !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function doSiginout(){
		$this->session->unset_userdata('logged_in');
		// session_destroy();
		redirect(BASEURL.'auth/signin', 'refresh');
	}

	function isAuthenticated(){
		$loggedinuser=$this->session->userdata ( 'logged_in');
		if($loggedinuser==''){
			redirect(BASEURL.'auth/signin', 'refresh');
		}else{
			return true;
		}
	}
}
