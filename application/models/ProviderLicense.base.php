<?php
//Generated by buildORM from the ourlaravel:ProviderLicenses

	class ProviderLicense_base extends Eloquent{

		public static $table = 'ProviderLicenses';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','Provider_id');
        }


        //autogenerated this function... 
        public function ProviderSpeciality()
        {
                return $this->belongs_to('ProviderSpeciality','ProviderSpeciality_id');
        }


        //autogenerated this function... 
        public function State()
        {
                return $this->belongs_to('State','State_id');
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


	}//the end of class ProviderLicense		
?>