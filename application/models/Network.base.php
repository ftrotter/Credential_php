<?php
//Generated by buildORM from the ourlaravel:Networks

	class Network_base extends Eloquent{

		public static $table = 'Networks';
 

        //autogenerated this function... 
        public function created_by_User()
        {
                return $this->belongs_to('User','created_by_User_id');
        }


        //autogenerated this function... 
        public function modified_by_User()
        {
                return $this->belongs_to('User','modified_by_User_id');
        }


	}//the end of class Network		
?>