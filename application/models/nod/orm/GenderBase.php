<?php
//Generated by buildORM from the cred:Genders

	namespace nod\orm; //so this file should live under models/nod/orm

	class GenderBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Genders';
 

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


        //autogenerated this function... 
        public function Provider_bunch()
        {
                return $this->has_many('Provider',Gender_id);
               // return $this->has_one('Provider',Gender_id);
        }


	}//the end of class Gender		
?>