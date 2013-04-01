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


}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
