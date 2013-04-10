<?php
//Generated by buildORM from the cred:Providers

	

	class ProviderBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Providers';
 

        //autogenerated this function... 
        public function ProviderStatus()
        {
                return $this->belongs_to('ProviderStatus','providerstatus_id');
        }


        //autogenerated this function... 
        public function Birth_Address()
        {
                return $this->belongs_to('Address','birth_address_id');
        }


        //autogenerated this function... 
        public function Gender()
        {
                return $this->belongs_to('Gender','gender_id');
        }


        //autogenerated this function... 
        public function Home_Phone()
        {
                return $this->belongs_to('Phone','home_phone_id');
        }


        //autogenerated this function... 
        public function Home_Address()
        {
                return $this->belongs_to('Address','home_address_id');
        }


        //autogenerated this function... 
        public function Corr_Phone()
        {
                return $this->belongs_to('Phone','corr_phone_id');
        }


        //autogenerated this function... 
        public function Corr_Address()
        {
                return $this->belongs_to('Address','corr_address_id');
        }


        //autogenerated this function... 
        public function Corr_Fax_Phone()
        {
                return $this->belongs_to('Phone','corr_fax_phone_id');
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
        public function Document_bunch()
        {
                return $this->has_many('Document',provider_id);
               // return $this->has_one('Document',provider_id);
        }


        //autogenerated this function... 
        public function ProviderCarrier_bunch()
        {
                return $this->has_many('ProviderCarrier',provider_id);
               // return $this->has_one('ProviderCarrier',provider_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_bunch()
        {
                return $this->has_many('ProviderCoverage',provider_id);
               // return $this->has_one('ProviderCoverage',provider_id);
        }


        //autogenerated this function... 
        public function ProviderCredential_bunch()
        {
                return $this->has_many('ProviderCredential',provider_id);
               // return $this->has_one('ProviderCredential',provider_id);
        }


        //autogenerated this function... 
        public function ProviderEducation_bunch()
        {
                return $this->has_many('ProviderEducation',provider_id);
               // return $this->has_one('ProviderEducation',provider_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_bunch()
        {
                return $this->has_many('ProviderHospital',provider_id);
               // return $this->has_one('ProviderHospital',provider_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_bunch()
        {
                return $this->has_many('ProviderLicense',provider_id);
               // return $this->has_one('ProviderLicense',provider_id);
        }


        //autogenerated this function... 
        public function ProviderNetwork_bunch()
        {
                return $this->has_many('ProviderNetwork',provider_id);
               // return $this->has_one('ProviderNetwork',provider_id);
        }


        //autogenerated this function... 
        public function ProviderReference_bunch()
        {
                return $this->has_many('ProviderReference',provider_id);
               // return $this->has_one('ProviderReference',provider_id);
        }


        //autogenerated this function... 
        public function ProviderSpeciality_bunch()
        {
                return $this->has_many('ProviderSpeciality',provider_id);
               // return $this->has_one('ProviderSpeciality',provider_id);
        }


        //autogenerated this function... 
        public function ProvidersProviderSpeciality_bunch()
        {
                return $this->has_many('ProvidersProviderSpeciality',provider_id);
               // return $this->has_one('ProvidersProviderSpeciality',provider_id);
        }


	}//the end of class Provider		
?>