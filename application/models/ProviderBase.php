<?php
//Generated by buildORM from the cred:Providers

	class ProviderBase extends Eloquent{

		public static $table = 'Providers';
 

        //autogenerated this function... 
        public function ProviderStatus()
        {
                return $this->belongs_to('ProviderStatus','ProviderStatus_id');
        }


        //autogenerated this function... 
        public function Birth_Address()
        {
                return $this->belongs_to('Address','Birth_Address_id');
        }


        //autogenerated this function... 
        public function Gender()
        {
                return $this->belongs_to('Gender','Gender_id');
        }


        //autogenerated this function... 
        public function Home_Phone()
        {
                return $this->belongs_to('Phone','Home_Phone_id');
        }


        //autogenerated this function... 
        public function Home_Address()
        {
                return $this->belongs_to('Address','Home_Address_id');
        }


        //autogenerated this function... 
        public function Corr_Phone()
        {
                return $this->belongs_to('Phone','corr_phone_id');
        }


        //autogenerated this function... 
        public function Corr_Address()
        {
                return $this->belongs_to('Address','Corr_Address_id');
        }


        //autogenerated this function... 
        public function Corr_Fax_Phone()
        {
                return $this->belongs_to('Phone','Corr_Fax_Phone_id');
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
        public function Document_bunch()
        {
                return $this->has_many('Document',Provider_id);
               // return $this->has_one('Document',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderCarrier_bunch()
        {
                return $this->has_many('ProviderCarrier',Provider_id);
               // return $this->has_one('ProviderCarrier',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_bunch()
        {
                return $this->has_many('ProviderCoverage',Provider_id);
               // return $this->has_one('ProviderCoverage',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderCredential_bunch()
        {
                return $this->has_many('ProviderCredential',Provider_id);
               // return $this->has_one('ProviderCredential',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderEducation_bunch()
        {
                return $this->has_many('ProviderEducation',Provider_id);
               // return $this->has_one('ProviderEducation',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_bunch()
        {
                return $this->has_many('ProviderHospital',Provider_id);
               // return $this->has_one('ProviderHospital',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_bunch()
        {
                return $this->has_many('ProviderLicense',Provider_id);
               // return $this->has_one('ProviderLicense',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderNetwork_bunch()
        {
                return $this->has_many('ProviderNetwork',Provider_id);
               // return $this->has_one('ProviderNetwork',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderReference_bunch()
        {
                return $this->has_many('ProviderReference',Provider_id);
               // return $this->has_one('ProviderReference',Provider_id);
        }


        //autogenerated this function... 
        public function ProviderSpeciality_bunch()
        {
                return $this->has_many('ProviderSpeciality',Provider_id);
               // return $this->has_one('ProviderSpeciality',Provider_id);
        }


        //autogenerated this function... 
        public function ProvidersProviderSpeciality_bunch()
        {
                return $this->has_many('ProvidersProviderSpeciality',Provider_id);
               // return $this->has_one('ProvidersProviderSpeciality',Provider_id);
        }


	}//the end of class Provider		
?>
