<?php
//Generated by buildORM from the cred:ProviderLicenses

	

	class ProviderLicenseBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProviderLicenses';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function ProviderSpeciality()
        {
                return $this->belongs_to('ProviderSpeciality','providerspeciality_id');
        }


        //autogenerated this function... 
        public function State()
        {
                return $this->belongs_to('State','state_id');
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


	}//the end of class ProviderLicense		
?>