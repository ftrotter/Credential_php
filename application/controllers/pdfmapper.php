<?php

class Pdfmapper_Controller extends Base_Controller {

	public function action_index()
	{	
		$this->view_data['name'] = 'name something';
		$this->view_data['place'] = 'place something';

		$big_array = array();

		



		$this->view_data['big_array'] = $big_array;

		return($this->_render('pdfmapper_index'));
	}

}
