<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('mdl_welcome');
		$this->load->module('common');
	}
	function index(){
		$this->home();
	}
	function home(){
		$this->common->header();
		$this->load->view('home');
		$this->common->footer();
	}

	function other(){
		$this->load->view('other');
	}

	function pill(){
		return 'Have fun with web development!';
	}
	function get($order_by){
		$query = $this->mdl_welcome->get($order_by);
		return $query;
	}

	function get_with_limit($limit,$offset,$order_by){

		$query = $this->mdl_welcome->get_with_limit($limit,$offset,$order_by);
		return $query;
	}

	function get_where($id){

		$query = $this->mdl_welcome->get_where($id);
		return $query;
	}

	function get_where_custom($col,$value){

		$query = $this->mdl_welcome->get_where_custom($col,$value);
		return $query;
	}

	function get_group_by($col){
		$query = $this->mdl_tracking->get_group_by($col);
		return $query;
	}

	function _insert($data){

		$this->mdl_welcome->_insert($data);
	}

	function _update($id,$data){

		$this->mdl_welcome->_update($id,$data);
	}

	function _delete($id){

		$this->mdl_welcome->_delete($id);
	}

	function count_where($column,$value){

		$count = $this->mdl_welcome->count_where($column,$value);
		return $count;
	}
	function count_all(){

		$num_rows = $this->mdl_welcome->count_all();
		return $num_rows;
	}

	function get_max(){

		$max_id = $this->mdl_welcome-> get_max();
		return $max_id;

	}

	function _custom_query($mysql_query){

		$query = $this->mdl_welcome->_custom_query($mysql_query);
		return $query;

	}



}
