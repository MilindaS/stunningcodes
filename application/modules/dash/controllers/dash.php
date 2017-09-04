<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dash extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_dash');
		$this->load->module('auth');
		$this->load->module('common');
		$this->auth->isAuthenticated();
	}

	function index(){
		$css_array = array('jquery.simplecolorpicker.css','bootstrap2-toggle.min','component','perfect-scrollbar.min','bootstrap-datetimepicker.min');
		$js_array = array('ckeditor/ckeditor.js','ckeditor/adapters/jquery.js');
		$this->common->header($css_array,$js_array);
		$this->common->navigation();
		$data['tags'] = $this->getAllTags();
		$this->load->view('dash',$data);
		$this->common->footer();
	}


	function calendar(){
		$css_array = array('bootstrap2-toggle.min','component','perfect-scrollbar.min','jquery.qtip.min','bootstrap-datetimepicker.min','fullcalendar.min.css');
		$js_array = array('ckeditor/ckeditor.js','ckeditor/adapters/jquery.js','fullcalendar.min.js');
		$this->common->header($css_array,$js_array);
		$this->common->navigation();
		$data['dt'] = $this->getAllDocs();
		$this->load->view('calendar',$data);
		$this->common->footer();
	}

	function tagEdit(){
		$css_array = array('select2');
		$js_array = array('select2.min.js');
		$this->common->header($css_array,$js_array);
		$this->common->navigation();
		$data['tags'] = $this->getAllTags();
		$this->load->view('tagEdit',$data);
		$this->common->footer();
	}

	function unlockDoc(){
		try{
			log_message('error',$this->input->post('privacy_key'));
			$result = $this->mdl_dash->unlockDoc($this->input->post('privacy_key'));
			$return  = 	array('type'=>$result,
						'data'=>'',
						'msg'=>'');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}
	function saveDoc(){
		try{
			// log_message('error',json_encode(($this->input->post())));
			// exit();
			$result = $this->mdl_dash->saveDoc($this->input->post());
			$return  = 	array('type'=>'success',
						'data'=>$result,
						'msg'=>'<i class="ion-checkmark-circled"></i>&nbsp;&nbsp;Document Saved !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function saveTag(){
		try{
			$result = $this->mdl_dash->saveTag($this->input->post());
			$return  = 	array('type'=>'success',
						'data'=>$result,
						'msg'=>'<i class="ion-checkmark-circled"></i>&nbsp;&nbsp;Tag Saved !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function getDocs($limit,$offset){
		echo json_encode($this->mdl_dash->getDocs($limit,$offset));
	}

	function getDoc($id){
		echo json_encode($this->mdl_dash->getDoc($id));
	}

	function getAllTags(){
		return $this->mdl_dash->getAllTags();
	}

	function getAllDocs(){
		return $this->mdl_dash->getAllDocs();
	}

	function searchDoc(){
		$result = $this->mdl_dash->searchDoc($this->input->post('search_doc_title'));
		echo json_encode($result);
	}
	function filterDoc(){
		$result = $this->mdl_dash->filterDoc($this->input->post('tags'));
		echo json_encode($result);
	}
	
	function deleteDoc(){
		try{
			$result = $this->mdl_dash->deleteDoc($this->input->post('id'));
			$return  = 	array('type'=>'success',
						'result'=>$result,
						'msg'=>'<i class="ion-checkmark-circled"></i>&nbsp;&nbsp;Document Deleted !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

	function deleteTag(){
		try{
			$result = $this->mdl_dash->deleteTag($this->input->post('id'));
			$return  = 	array('type'=>'success',
						'result'=>$result,
						'msg'=>'<i class="ion-checkmark-circled"></i>&nbsp;&nbsp;Tag Deleted !');
			echo json_encode($return);
		}
		catch(Exception $e){
			log_message('error',$e->getMessage());
		}
	}

}
