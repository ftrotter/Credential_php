<?php

require_once('/var/www/html/runorelse/config.php');

class MongoObject{

        var $mongo;
	var $data_array = array();

        function __construct(){

                $host = $GLOBALS['mongo_host'];
                $port = $GLOBALS['mongo_port'];
                $dbname = $GLOBALS['mongo_db'];

                $db = new Mongo("mongodb://$host:$port/$dbname");
                $this->mongo = $db->$dbname;
        }

//returns the cursor to all records
function get_all(){

	$name = strtolower(get_class($this));

        $collection = $this->mongo->$name;
        $cursor = $collection->find();

        return($cursor);

}

function get_all_reverse(){

        $name = strtolower(get_class($this));

        $collection = $this->mongo->$name;
        $cursor = $collection->find();
	
	$cursor = $cursor->sort(array("_id" => -1)); 

        return($cursor);

}


function _arrays_last($a,$b){

	if(!is_array($a) or !is_array($b)){
		return(0);//dont care
	}

	$a_size = count($a);
	$b_size = count($b);

	if($a_size > $b_size){
		return(1);
	}else{
		return(-1);
	}
	return(0); //they are the same size
}

function sync($id = 0){


        if(is_numeric($id)){
		$id = (int) $id;
	}else{
		//its a string, like an email that potentially might have special characters
		$id = (string) $id;
	}

	$name = strtolower(get_class($this));
        $collection = $this->mongo->$name; //mongo comes from the MongoObject class...

        if($id !== 0){
		$find = array($name.'_id' => $id);
		//for whatever reason the '@' symbol in emails causes fits with findOne.
		//so we use find and getNext to make our own findOne
                $db_cursor = $collection->find($find);
		$db_array = $db_cursor->getNext();
		if(is_null($db_array)){ //sometimes I will have an id, but the db will not know it yet...
			$db_array = array($name.'_id' => $id); //lets make an array with just the id in it..
		}
        }else{
                $db_array = array();
        }

        //this is how we save...
        if(isset($this->data_array)){
                foreach($this->data_array as $key => $data){
                        $db_array[$key] = $data;

                }
        }

        $merged_array = $db_array; // after the for loop above we have merged the two data sources.

        $merged_array[$name.'_id'] = $id; //just to be sure the id stays the same...

	uksort($merged_array, 'strnatcasecmp'); //alphabetical sort caseinsentitive, by keys

	$tmp_array = array();
	foreach($merged_array as $key => $sub){
		if(is_array($sub)){
			unset($merged_array[$key]); //take it away from where it is
			$tmp_array[$key] = $sub; //put it somewhere safe
		}
	}

	uksort($tmp_array, 'strnatcasecmp'); //alphabetical sort caseinsentitive, by keys
	foreach($tmp_array as $key => $sub){
		//now lets put them all at the end of the 
		$merged_array[$key] =$sub;
	}

        //mongo magic that saves our data...
        $collection->update(array($name.'_id' => $id),$merged_array,array('upsert' => true));
        //save it for the other functions...
        $this->data_array = $merged_array;
        return($merged_array);
}


function remove($id = 0){

	if($id === 0){
		echo "Calling remove with no argument. Fail. $id";
		die();
	}

        if(is_numeric($id)){
                $id = (int) $id;
        }else{
                //its a string, like an email that potentially might have special characters
                $id = (string) $id;
        }

        $name = strtolower(get_class($this));
        $collection = $this->mongo->$name; //mongo comes from the MongoObject class...

        $remove = array($name.'_id' => $id);
                //for whatever reason the '@' symbol in emails causes fits with findOne.
                //so we use find and getNext to make our own findOne
        $collection->remove($remove,array("justOne" => true));

}


}
?>
