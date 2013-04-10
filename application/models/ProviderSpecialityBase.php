<?php
//Generated by buildORM from the cred:ProviderSpecialitys

	

	class ProviderSpecialityBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProviderSpecialitys';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function Speciality()
        {
                return $this->belongs_to('Speciality','speciality_id');
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
        public function Board()
        {
                return $this->belongs_to('Board','board_id');
        }


        //autogenerated this function... 
        public function ProviderEducation_bunch()
        {
                return $this->has_many('ProviderEducation',providerspeciality_id);
               // return $this->has_one('ProviderEducation',providerspeciality_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_bunch()
        {
                return $this->has_many('ProviderLicense',providerspeciality_id);
               // return $this->has_one('ProviderLicense',providerspeciality_id);
        }


        //autogenerated this function... 
        public function ProvidersProviderSpeciality_bunch()
        {
                return $this->has_many('ProvidersProviderSpeciality',providerspeciality_id);
               // return $this->has_one('ProvidersProviderSpeciality',providerspeciality_id);
        }


	}//the end of class ProviderSpeciality		
?>