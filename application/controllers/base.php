<?php

class Base_Controller extends Controller {

	/**
	 * Catch-all method for requests that can't be matched.
	 *
	 * @param  string    $method
	 * @param  array     $parameters
	 * @return Response
	 */
	public function __call($method, $parameters)
	{
		return Response::error('404');
	}

	//NOD custom code...


	var $view_data = array(); ///where we store the view data!!

        public function _render($template_name){

                $base_url = URL::base();
                $this->view_data['base_url'] = $base_url;

                $this->view_data['title'] = Config::get('application.site_name');
                $this->view_data['copyright'] = Config::get('application.copyright');
		
                //build the menu
                $menu = array (
                        0 => array (
                                'name' => 'Home',
                                'url' => $base_url,
                                'icon' => '',
                                ),
                        1 => array (
                                'name' => 'Something',
                                'url' => "$base_url"."something/list",
                                'icon' => '',
                                ),
                        2 => array (
                                'name' => 'Else',
                                'url' => "$base_url"."else/list",
                                'icon' => '',
                                ),

                        );

                $this->view_data['menu'] = $menu;


		//WTF, I had to delete the line in laravel that
		//set this to report everything...
		//I can find nothing that "brings back" the ability 
		//to not have to define smarty values in the code
		//with the exception of doing this...
		//this is really frustrating...
		error_reporting(0);

                $menu_contents = SView::make('menu',$this->view_data);
		$this->view_data['menu_contents'] = $menu_contents;

                $view_contents = SView::make($template_name,$this->view_data);
                $this->view_data['view_contents'] = $view_contents;

		$this->view_data['displayName'] = '';

                $return_me = SView::make('html',$this->view_data);
	

		return($return_me);
		
        }

}
