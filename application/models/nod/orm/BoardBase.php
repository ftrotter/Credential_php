<?php
//Generated by buildORM from the cred:Boards

	namespace nod\orm; //so this file should live under models/nod/orm

	class BoardBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Boards';
 

        //autogenerated this function... 
        public function Address()
        {
                return $this->belongs_to('Address','Address_id');
        }


        //autogenerated this function... 
        public function Phone()
        {
                return $this->belongs_to('Phone','Phone_id');
        }


        //autogenerated this function... 
        public function Fax_Phone()
        {
                return $this->belongs_to('Phone','Fax_Phone_id');
        }


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
        public function ProviderSpeciality_bunch()
        {
                return $this->has_many('ProviderSpeciality',Board_id);
               // return $this->has_one('ProviderSpeciality',Board_id);
        }


	}//the end of class Board		
?>