<?php

//My attempt to creat a mongo abstraction library that accepts 
//data as an array (using data_array) (which is clearly the wrong way to do it..
//and has the capacity to both save with and without versioning
class VeryMongo{

        var $mongo;
	var $data_array = array();

        function __construct(){

		$db_array = Config::get('database.connections.mongo');
		$host = $db_array['host'];
		$port = $db_array['port'];
		$dbname = $db_array['db'];


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

//this function puts sub arrays last in the JSON for more readable Mongo documents
//stuff that is not in a sub array is much more important can be easily indexed etc etc..
//for now, we do not use this...

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

/**
 * sync takes all of the data that you have placed in data_array and saves it to the mongo database
 * if their is data in the database, it copies it out... so it is the load function...
 * then it takes all of the data that is user created and in data_array and smashes it on top of the current array
 * Everything in data_array overwrites anything currently in the database... but otherwise the contents of the db are 
 * maintained...
**/
function sync($id = 0, $versioning = false){


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

        
        if(isset($this->data_array)){
                foreach($this->data_array as $key => $data){
                        $db_array[$key] = $data;

                }
        }

        $merged_array = $db_array; // after the for loop above we have merged the two data sources.

        $merged_array[$name.'_id'] = $id; //just to be sure the id stays the same...


	//Begin array beautification!!
	//
	//
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
	//
	//
	//End array beautification

        //mongo magic that saves our data...
        $collection->update(array($name.'_id' => $id),$merged_array,array('upsert' => true));
        //save it for the other functions...
        $this->data_array = $merged_array;
        return($merged_array);
}

//my delete function
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

//Lovely function borrowed from http://stackoverflow.com/questions/3876435/recursive-array-diff
function arrayRecursiveDiff($aArray1, $aArray2) {
  $aReturn = array();

  foreach ($aArray1 as $mKey => $mValue) {
    if (array_key_exists($mKey, $aArray2)) {
      if (is_array($mValue)) {
        $aRecursiveDiff = arrayRecursiveDiff($mValue, $aArray2[$mKey]);
        if (count($aRecursiveDiff)) { $aReturn[$mKey] = $aRecursiveDiff; }
      } else {
        if ($mValue != $aArray2[$mKey]) {
          $aReturn[$mKey] = $mValue;
        }
      }
    } else {
      $aReturn[$mKey] = $mValue;
    }
  }
  return $aReturn;
} 




}
?>
