<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdl_dash extends CI_Model {

	public $db;
	private $_data;
	private $_sessionOwner;

	function __construct(){
		parent::__construct();
		$this->db = new Cimongo();
		$this->_data['ts'] = array(
								'datetime'=>date('Y-M-d H:i:s'),
								'ts'=>microtime(true)*1000);
		$this->_sessionOwner = $this->session->userdata( 'logged_in');
	}

	function saveDoc($doc){
		$this->_data['user'] =$this->_sessionOwner['id'];
		$this->_data['title'] = $doc['title'];
		$this->_data['background'] = $doc['colorpicker-modal-picker'];
		$this->_data['tags'] = (isset($doc['tags'])) ? $doc['tags'] : [];
		
		// log_message('error',json_encode($this->_data['tags']));

		$this->_data['content'] = $doc['content'];
		$this->_data['username'] = $doc['username'];
		$this->_data['xpassword'] = $doc['xpassword'];
		$this->_data['privacy_toggle'] = ($doc['privacy_toggle'] =='true' ? true : false);
		$this->_data['ts']['gts'] = ($doc['datetime']!="") ? (strtotime($doc['datetime'])*1000) : (microtime(true)*1000);
		if($doc['id']!=null){
			$result = $this->db->where(array('_id'=>new MongoID($doc['id'])))->update('documents',$this->_data);
			if($result){
				$docs = $this->db->where(array('_id'=>new MongoID($doc['id'])))->get('documents');
				$result = $docs->result_array();
				return $result;
			}
		}else{
			$result = $this->db->insert('documents',$this->_data);
			if($result){
				$docs = $this->db->where(array('_id'=>new MongoID($this->db->insert_id())))->get('documents');
				$result = $docs->result_array();
				return $result;
			}
		}


	}


	function saveTag($tagData){
		$this->_data['tag'] = $tagData['tag'];
		$this->_data['tagDesc'] = $tagData['tagDesc'];

		$result = $this->db->insert('tags',$this->_data);
	}

	function unlockDoc($privacy_key){
		$user_id =$this->_sessionOwner['id'];
		$docs = $this->db->where(array('_id'=>new MongoID($user_id),'auth.privacy_key'=>sha1($privacy_key)))->get('users');
		$result = $docs->result_array();
		if(count($result)==1){
			return true;
		}else{
			return false;
		}
	}

	function searchDoc($title){
		// log_message('error',json_encode($title));
		$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->like("title",$title)->get('documents',5,0);
		$result = $docs->result_array();
		$bl_arr = array();
		foreach ($result as $value) {
			$bl_arr[] = array('value'=>$value['title'],
								'_id'=>$value['_id'],
								'ts'=>$value['ts'],
								'title'=>$value['title'],
								'privacy_toggle'=>$value['privacy_toggle'],
								'content'=>$value['content'],
								'username'=>$value['username'],
								'xpassword'=>$value['xpassword'],
								'user'=>$value['user']
								);
		}
		return $bl_arr;
	}

	function filterDoc($tags){
		if($tags){
			$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->where_in("tags",$tags)->get('documents');
		}else{
			$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->get('documents');
		}
		$result = $docs->result_array();
		$bl_arr = array();
		foreach ($result as $value) {
			$bl_arr[] = array('value'=>$value['title'],
								'_id'=>$value['_id'],
								'ts'=>$value['ts'],
								'title'=>$value['title'],
								'privacy_toggle'=>$value['privacy_toggle'],
								'content'=>$value['content'],
								'background'=>$value['background'],
								'user'=>$value['user']
								);
		}
		return $bl_arr;
	}
	

	function getDocs($limit,$offset){
		$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->order_by(array("ts.gts"=>"desc"))->get('documents',$limit,$offset);
		$result = $docs->result_array();
		return $result;
	}

	function getAllDocs(){
		$docs = $this->db->where(array('user'=>$this->_sessionOwner['id']))->order_by(array("ts.gts"=>"desc"))->get('documents');
		$result = $docs->result_array();
		return $result;
	}

	function getDoc($id){
		$docs = $this->db->where(array('_id'=>new MongoID($id)))->get('documents');
		$result = $docs->result_array();
		return $result[0];
	}

	function getAllTags(){
		$docs = $this->db->get('tags');
		$result = $docs->result_array();
		return $result;
	}

	function deleteDoc($id){
		// log_message('error',$id);
		$result = $this->db->where(array('_id'=>new MongoID($id)))->delete('documents');
		if($result){
			return true;
		}
	}

	function deleteTag($id){
		// log_message('error',$id);
		$result = $this->db->where(array('_id'=>new MongoID($id)))->delete('tags');
		if($result){
			return true;
		}
	}
}
