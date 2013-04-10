<?php

class Documents_Controller extends Base_Controller {


	

	public function action_notify()
	{


		
		$result_json = $_POST['transloadit'];
		$result = json_decode($result_json);

		$Doc = new Document();
		$Doc->imageurl = $result['results']['thumb'][0]['ssl_url'];
		$Doc->documenturl = $result['results'][':original'][0]['ssl_url'];
		$Doc->doctor_id = 55555555;
		$Doc->filename = 'upload_test';
		$Doc->container = 'upload_test';
		$Doc->token = 'upload_test';

		$Doc->save();
		
		return("<pre>". var_export($_POST['transloadit']) ."</pre>");


		//just tell transloadit that we are good...
		return Response::make('', 200);

	}


	public function action_docform(){

		$this->view_data['doctor_name'] = 'Fred Trotter';
		$this->view_data['doctor_id'] = 1;

		$base_url = URL::base();
		$auth = Config::get('transloadit_auth');

		$template_id = '7e23fb10bc224ca3937c3e7fe3f5a9f6'; //this shouldnt be hardcoded...

		$this->view_data['trans_params'] = array(
    			'auth' => array('key' => $auth),
    			'template_id' => $template_id,
    			'redirect_url' => $base_url . '/index.php/documents/notify/'
);


		return($this->_render('documents_docform.tpl'));


	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
