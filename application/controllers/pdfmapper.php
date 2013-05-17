<?php

class Pdfmapper_Controller extends Base_Controller {


	public $restful = true;

	public function get_index()
	{	


		if(isset($_GET['npi'])){
			//load the NPI back...
			$npi = $_GET['npi'];
                	if(is_numeric($npi) && strlen($npi) == 10){
				$Doctor = new Doctor();
                        	$doc_id = (int) $npi;
             	           	$Doctor->sync($doc_id); //use it to load the current record
				$this->view_data = $Doctor->data_array;
                        	$this->view_data['npi'] = $npi;
			}

		}


		return($this->_render('pdfmapper_index'));
	}

	public function post_index(){

		$npi = $_POST['npi']; //get my id from the post	
		if(is_numeric($npi) && strlen($npi) == 10){
			$Doctor = new Doctor();
			$doc_id = (int) $npi;
			$Doctor->sync($doc_id); //use it to load the current record
			$Doctor->data_array =$_POST; //smash the input ontop 
			$Doctor->sync($doc_id); //save it.

			$this->view_data['npi'] = $npi;

			return($this->_render('pdfmapper_index_post'));
		}else{

			echo "we require a 10 digit numerical NPI to work";
			exit();
		}
	
	}

	public function get_list(){

		


	}
}
