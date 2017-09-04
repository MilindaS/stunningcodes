<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mail extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_mail');
	}

	public function send(){
		$name = 'Sampath';
		$email = 'rockmakas@gmail.com';
		$comments = 'hi';

		$this->load->library('email');
		$config = array (
                  'mailtype' => 'html',
                  'charset'  => 'utf-8',
                  'priority' => '1'
                   );
		$this->email->initialize($config);
		$this->email->from($email , $name);
		$this->email->to('tharindu.wijeratna@gmail.com');
		
		//$this->email->cc('another@another-example.com');
		//$this->email->bcc('them@their-example.com');

		$this->email->subject('Ado balapan do.. :p');
		$comments=$this->load->view('template.html','',TRUE);
		$this->email->message($comments);

		$this->email->send();

	}



}
