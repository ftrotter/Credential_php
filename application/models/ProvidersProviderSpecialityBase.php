<?php
//Generated by buildORM from the cred:ProvidersProviderSpecialitys

	

	class ProvidersProviderSpecialityBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProvidersProviderSpecialitys';
 

        //autogenerated this function... 
        public function ProviderSpeciality()
        {
                return $this->belongs_to('ProviderSpeciality','providerspeciality_id');
        }


        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


	}//the end of class ProvidersProviderSpeciality		
?>