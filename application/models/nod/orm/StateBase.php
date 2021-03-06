<?php
//Generated by buildORM from the cred:States

	namespace nod\orm; //so this file should live under models/nod/orm

	class StateBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'States';
 

        //autogenerated this function... 
        public function Address_bunch()
        {
                return $this->has_many('Address',State_id);
               // return $this->has_one('Address',State_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_bunch()
        {
                return $this->has_many('ProviderCoverage',State_id);
               // return $this->has_one('ProviderCoverage',State_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_bunch()
        {
                return $this->has_many('ProviderHospital',State_id);
               // return $this->has_one('ProviderHospital',State_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_bunch()
        {
                return $this->has_many('ProviderLicense',State_id);
               // return $this->has_one('ProviderLicense',State_id);
        }


	}//the end of class State		
?>