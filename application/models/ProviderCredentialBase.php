<?php
//Generated by buildORM from the cred:ProviderCredentials

	class ProviderCredentialBase extends Eloquent{

		public static $table = 'ProviderCredentials';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','Provider_id');
        }


        //autogenerated this function... 
        public function CredentialOrganization()
        {
                return $this->belongs_to('CredentialOrganization','CredentialOrganization_id');
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


	}//the end of class ProviderCredential		
?>