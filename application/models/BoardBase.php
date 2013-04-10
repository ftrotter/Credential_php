<?php
//Generated by buildORM from the cred:Boards

	

	class BoardBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Boards';
 

        //autogenerated this function... 
        public function Address()
        {
                return $this->belongs_to('Address','address_id');
        }


        //autogenerated this function... 
        public function Phone()
        {
                return $this->belongs_to('Phone','phone_id');
        }


        //autogenerated this function... 
        public function Fax_Phone()
        {
                return $this->belongs_to('Phone','fax_phone_id');
        }


        //autogenerated this function... 
        public function created_by_User()
        {
                return $this->belongs_to('User','created_by_user_id');
        }


        //autogenerated this function... 
        public function modified_by_User()
        {
                return $this->belongs_to('User','modified_by_user_id');
        }


        //autogenerated this function... 
        public function ProviderSpeciality_bunch()
        {
                return $this->has_many('ProviderSpeciality',board_id);
               // return $this->has_one('ProviderSpeciality',board_id);
        }


	}//the end of class Board		
?>