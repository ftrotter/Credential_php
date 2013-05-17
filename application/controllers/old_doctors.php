<?php

class Doctors_Controller extends Base_Controller {


	

	public function action_index()
	{

		$Doctor = new Doctor();
		$all_docs = $Doctor->get_all();
		var_export($all_docs);
		exit();
		return($this->_render('doctors_index'));

	}


	public function action_formdownload(){

	}

        public function action_edit()
        {
		
		$npi = false;
		if(isset($_GET['npi'])){
			if(is_numeric($_GET['npi'])){
				$npi = $_GET['npi'];
			}
		}
		if(isset($_POST['npi'])){
			
			$note = $_POST['note'];
			unset($_POST['note']);
			$npi = $_POST['npi'];
			$Doctor = new Doctor();
			$Doctor->data_array['fields'] = $_POST;
			$Doctor->data_array['note'] = $note;
			$use_versioning = true;
			$Doctor->sync($npi);

		}

		if($npi){
			$Doctor = new Doctor();
			$Doctor->sync($npi);
			if(!isset($Doctor->data_array['fields'])){
				echo "No fields found... ";
				exit();
			}
			foreach($Doctor->data_array['fields'] as $key => $value){
                		$this->view_data[$key] = $value;
			}
			$this->view_data['note'] = $Doctor->data_array['note'];
			$this->view_data['npi'] = $npi;
		}
	

		//$documents = Document::where('doctor_id', '=', array('doctor_id' => $npi))->get(0);
		$documents = Document::all();	

		$doc_view = array();
		foreach($documents as $id => $doc){

			//var_export($doc);
	
			$tmp_array = array();	
			$tmp_array['img_url'] = $doc->getImageURL();
			$tmp_array['doc_url'] = $doc->documenturl;
			$tmp_array['filename'] = $doc->filename;
			$doc_view[] = $tmp_array;

		}

		$this->view_data['documents'] = $doc_view;	


$params = array(
    'auth' => array('key' => '170cb47bb71442b1ae47cb883eab7aeb'),
    'template_id' => '7e23fb10bc224ca3937c3e7fe3f5a9f6',
    'redirect_url' => 'http://cred.ft1.us/Documents/docNotification/'
);
	$this->view_data['trans_params'] = htmlentities(json_encode($params));


               	return($this->_render('doctors_edit'));

		
        }



	function _load_list(){

		

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
