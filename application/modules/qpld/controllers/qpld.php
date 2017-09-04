<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Qpld extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_qpld');
		$this->load->module('auth');
		$this->load->module('common');
	}

	function index(){
		$css_array = array('dropzone.css');
		$js_array = array('dropzone.js');
		$this->common->header($css_array,$js_array);
		$this->load->view('dash');
		$this->common->footer();
	}
	function upload(){
		$ds = DIRECTORY_SEPARATOR;  //1
		$storeFolder = 'public'.$ds.'uploads';   //2
		if (!empty($_FILES)) {
	    $tempFile = $_FILES['file']['tmp_name'];          //3
	    $targetPath = FCPATH . $storeFolder . $ds;  //4
	    $targetFile =  $targetPath. $_FILES['file']['name'];  //5
	    move_uploaded_file($tempFile,$targetFile); //6
	    $data['prevPath'] = base_url().'public'.$ds.'uploads'.$ds. $_FILES['file']['name'];
	    $data['filePath'] = $targetFile;
	    $result = $this->mdl_qpld->saveUpld($data);
		redirect(BASEURL.'qpld', 'refresh');
		}
	}

	function unlink(){
		$ds = DIRECTORY_SEPARATOR;  //1
		$storeFolder = 'public'.$ds.'uploads';   //2
		$files = glob(FCPATH . $storeFolder . $ds.'*'); // get all file names
		foreach($files as $file){ // iterate files
		  if(is_file($file))
		    unlink($file); // delete file
		}
	}

	function deleteFile($file){
		$ds = DIRECTORY_SEPARATOR;  //1
		$storeFolder = 'public'.$ds.'uploads';   //2
		$fileD = FCPATH . $storeFolder . $ds.$file; // get all file names
	    // if(is_file($fileD))
		    unlink($fileD); // delete file
		redirect(BASEURL.'qpld/files', 'refresh');
	}

	function files(){
		$css_array = array('../../vendor/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css');
		$js_array = array('../../vendor/datatables/media/js/jquery.dataTables.min.js','../../vendor/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js');
		$ds = DIRECTORY_SEPARATOR;  //1
		$this->common->header($css_array,$js_array);
		$dir    = FCPATH.'public'.$ds.'uploads'.$ds;
		$data['files'] = array_diff(scandir($dir), array('..', '.'));
		$this->load->view('files',$data);
		$this->common->footer();
		// redirect(BASEURL.'public/uploads', 'refresh');
	}

}
