<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Simply tell Laravel the HTTP verbs and URIs it should respond to. It is a
| breeze to setup your application using Laravel's RESTful routing and it
| is perfectly suited for building large applications and simple APIs.
|
| Let's respond to a simple GET request to http://example.com/hello:
|
|		Route::get('hello', function()
|		{
|			return 'Hello World!';
|		});
|
| You can even respond to more than one URI:
|
|		Route::post(array('hello', 'world'), function()
|		{
|			return 'Hello World!';
|		});
|
| It's easy to allow URI wildcards using (:num) or (:any):
|
|		Route::put('hello/(:any)', function($name)
|		{
|			return "Welcome, $name.";
|		});
|
*/

//Since we use the smarty templating directly from the routes we have this here...
//To be DRY this and the controllers view setup should be moved to a static function
//somewhere... perhaps even in the config/application.php???
function setup_view_data(){

	$base_url = URL::base();
	$view_data = array(
		'displayName' => 'UserName Here',
		'copyright' => 'Notice',	
		'title' => 'NOD Cred',
		'base_url' => $base_url,
		'menu' => array( 0 => array(
				'name' => 'Dashboard',
				'url' => "$base_url/dashboard/",
				'icon' => '',
				),
				1 => array(
				'name' => 'Data',
				'url' => "$base_url/ORM",
				'icon' => '',
				),



			),
	);

	//error_reporting(0); //WTF why is this nessecary... see note in base.php controller

	$menu_contents = SView::make('menu',$view_data);
	$view_data['menu_contents'] = $menu_contents;
	return($view_data);
}

Route::get('/', function()
{

	if (Auth::guest()){
		return Redirect::to('login');
	}else{
		return simple_smarty_wrap(SView::make('dashboard')); //uses the smarty SView
	}
});

Route::get('/dashboard', function()
{
	return simple_smarty_wrap(SView::make('dashboard')); //uses the smarty SView
});

Route::get('/protected', function()
{
        return("You have to be logged in to see this");
});

Route::get('/unprotected', function()
{
        return("Everyone can see this");
});

function simple_smarty_wrap($stuff){
	$view_data = setup_view_data();
	$stuff = "<div class='container'>\n$stuff\n</div>";
	$view_data['view_contents'] = $stuff;
	return SView::make('html',$view_data);
}

Route::get('/ORM/(:any)/new',function($object_name){

	if(class_exists($object_name)){
		$view_data = setup_view_data();
		$object = new $object_name();

		foreach($_GET as $gkey => $gitem){ //sanatize and add to the form...
			$gkey = mysql_real_escape_string($gkey);
			$gitem = mysql_real_escape_string($gitem);
			$object->$gkey = $gitem;
		}

		$view_data['form_json'] = $object->getAlpacaJSON();
		$view_data['object_name'] = $object_name;
		$view_data['view_contents'] = SView::make('ormform',$view_data);
		return SView::make('html',$view_data);
	}else{
		return "<h1>Cough... sputter... I can't find an ORM called $object_name</h1>";
	}

});

Route::get('/ORM/(:any)/(:num)',function($object_name, $number){

	if(class_exists($object_name)){	
		$view_data = setup_view_data();
		$object = $object_name::find($number);
		$view_data['form_json'] = $object->getAlpacaJSON();
		$view_data['object_name'] = $object_name;
		$view_data['view_contents'] = SView::make('ormform',$view_data);
		return SView::make('html',$view_data);
	}else{
		return "<h1>Cough... sputter... I can't find an ORM called $object_name</h1>";
	}

});



Route::post('/ORM/(:any)/new',function($object_name, $number = null){



	if(class_exists($object_name)){

		$myObject = new $object_name();
		$input = Input::all();
		unset($input['submit']);

	
		$myObject = $object_name::create($input);

		//this is such a hack...
		//http://forums.laravel.io/viewtopic.php?pid=34751#p34751
		$new_id = DB::connection('mysql')->pdo->lastInsertId();
			
		$view_data = setup_view_data();	
		$return_me = "<h1> Created new $object_name ($new_id)  </h1>
		<ul>
			<li><a href='/ORM/$object_name/new'>Add new $object_name</a> </li>
			<li><a href='/ORM/$object_name/$new_id'>Edit $object_name $new_id</a> </li>
			<li><a href='/ORM/$object_name/'>Back to $object_name list</a> </li>
		</ul>
		";
		return(simple_smarty_wrap($return_me));
	
	}else{
		return "<h1>Cough... sputter... I can't find an ORM called $object_name</h1>";
	}

});



Route::post('/ORM/(:any)/(:num?)',function($object_name, $number = null){


	if(class_exists($object_name)){	
		$view_data = setup_view_data();	
		if(is_null($number)){
			$return_me .= "<p>Cough sputter... I did not get a number...";
		}else{
			$myObject = $object_name::find($number);
			$input = Input::all();
			unset($input['submit']);
			foreach($input as $id => $value){
				if(strpos($id,'is_') !== false){ 
					$input[$id] = true;
				}
			}

			foreach($myObject->get_fields() as $field){
				if(!isset($input[$field])){
					$input[$field] = false; //this means a checkbox was not checked..
				}
			}


			$myObject->fill($input);
			$myObject->save();
			
			$return_me ="<h1> Saved $object_name with $number </h1> 
		<ul>
			<li><a href='/ORM/$object_name/$number'>continue to edit $object_name $number</a></li>
			<li><a href='/ORM/$object_name/'>return to $object_name Manager</a></li>
			<li><a href='/ORM'>return to Data Manager</a></li>
			<li><a href='/'>return to dashboard</a></li>
		</ul>
 </p> ";
		}	
		return(simple_smarty_wrap($return_me));
	
	}else{
		return simple_smarty_wrap("<h1>Cough... sputter... I can't find an ORM called $object_name</h1>");
	}

});


Route::get('/ORM/(:any)',function($object_name){

	if(class_exists($object_name)){	
		$return_me = "<h1> List of all $object_name </h1>";
		$return_me .= "<a href='/ORM/$object_name/new'>Make a new $object_name</a><br><br>";
		$return_me .= "<ul>\n";
		foreach($object_name::all() as $this_one_object){
			if(!isset($name_field)){ //only runs on the first pass
				$name_field = $this_one_object->getMyNameField();
			}

			$this_id = $this_one_object->id;
			$this_name = $this_one_object->$name_field;
		
			$return_me .= "<li><a href='/ORM/$object_name/$this_id'>$this_name ($this_id)</a></li>\n";
		}
		$return_me .= "</ul>\n";
		
	
	}else{
		$return_me = "<h1>Cough... sputter... I can't find an ORM called $object_name</h1>";
	}

	return(simple_smarty_wrap($return_me));

});


Route::get('/ORM',function(){

	$class_list = BaseORM::listObjectTypes();

	$return_me = "<h1> Data </h1>";
	$return_me .= "<ul>\n";

	asort($class_list);

		foreach($class_list as $this_class){
			$return_me .= "<li><a href='/ORM/$this_class/'>$this_class</a></li>\n";
		}
		$return_me .= "</ul>\n";

	return(simple_smarty_wrap($return_me));

});


//We use controllers!!
Route::controller(Controller::detect());

/*
|--------------------------------------------------------------------------
| Application 404 & 500 Error Handlers
|--------------------------------------------------------------------------
|
| To centralize and simplify 404 handling, Laravel uses an awesome event
| system to retrieve the response. Feel free to modify this function to
| your tastes and the needs of your application.
|
| Similarly, we use an event to handle the display of 500 level errors
| within the application. These errors are fired when there is an
| uncaught exception thrown in the application.
|
*/

Event::listen('404', function()
{
	return Response::error('404');
});

Event::listen('500', function()
{
	return Response::error('500');
});

/*
|--------------------------------------------------------------------------
| Route Filters
|--------------------------------------------------------------------------
|
| Filters provide a convenient method for attaching functionality to your
| routes. The built-in before and after filters are called before and
| after every request to your application, and you may even create
| other filters that can be attached to individual routes.
|
| Let's walk through an example...
|
| First, define a filter:
|
|		Route::filter('filter', function()
|		{
|			return 'Filtered!';
|		});
|
| Next, attach the filter to a route:
|
|		Route::get('/', array('before' => 'filter', function()
|		{
|			return 'Hello World!';
|		}));
|
*/

Route::filter('before', function()
{
	// Do stuff before every request to your application...
	    // Maintenance mode
    if(0) return Response::error( '503' );

    /*
        Secures parts of the application
        from public viewing.
    */
    $location = URI::segment(1) . '/' . URI::segment(2);
    if(Auth::guest() && !in_array( $location, Config::get('application.no_login_needed'))){

        return Redirect::to( '/login' );

    }	

});

Route::filter('after', function($response)
{
	// Do stuff after every request to your application...
});

Route::filter('csrf', function()
{
	if (Request::forged()) return Response::error('500');
});

Route::filter('auth', function()
{
	if (Auth::guest()) return Redirect::to('login');
});
