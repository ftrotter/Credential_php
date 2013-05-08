<?php

class Pdfmapper_Controller extends Base_Controller {


	public $restful = true;

	public function get_index()
	{	


		if(isset($_GET['npi'])){
			//load the NPI back...


		}


		return($this->_render('pdfmapper_index'));
	}

	public function post_index(){

		$Doctor = new Doctor();
		$npi = $_POST['npi']; //get my id from the post	
		$Doctor->sync($npi); //use it to load the current record
		$Doctor->data_array =$_POST; //smash the input ontop 
		$Doctor->sync($npi); //save it.

		$this->view_data['npi'] = $npi;

		return($this->_render('pdfmapper_index_post'));
	
	}

	public function get_list(){

		


	}
}
