<?php

class Doctors_Controller extends Base_Controller {


	

	public function action_index()
	{

		$this->_render('doctors_index');

	}


	public function action_formdownload(){

		$this->load->model('doctormodel');
          	if(isset($_GET['npi'])){
                  	if(is_numeric($_GET['npi'])){
                        	$npi = $_GET['npi'];
                            	$current_record = $this->doctormodel->getFromNPI($npi);
                            	$this->smartylib->assign('fields',$current_record['fields']);
                        }
              	}else{

			echo "We really must have an npi here";
			exit();

		}


                $this->_render('doctors_form_download');

	}

        public function action_edit()
        {
		
		$Doctor = new Doctor();
		if(isset($_POST['npi'])){

			echo "Data saved!";
			$notes = $_POST['notes'];
			unset($_POST['notes']);
			$doctor_id = $_POST['npi'];
			$Doctor->sync($doctor_id); //loads the last version..
			$Doctor->data_array['fields'] = $_POST;
			$Doctor->data_array['note'] = $notes;
			$Doctor->data_array['doctor_id'] = $doctor_id;
			$use_versioning = true;
			$Doctor->sync($doctor_id,$use_versioning);

		}else{


			if(isset($_GET['npi'])){
				if(is_numeric($_GET['npi'])){
					$doctor_id  = $_GET['npi'];
					$Doctor->sync($doctor_id);
					foreach($Doctor->data_array['fields'] as $key => $value){
                				$this->view_data[$key] = $value;
					}
				}
			}
		
                	return($this->_render('doctors_edit'));

		}
        }



	function _load_list(){

		

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
