<?php
//Generated by buildORM from the cred:ProviderEducationsProviderEducations

	namespace nod\orm; //so this file should live under models/nod/orm

	class ProviderEducationsProviderEducationBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProviderEducationsProviderEducations';
 

        //autogenerated this function... 
        public function ProviderEducation()
        {
                return $this->belongs_to('ProviderEducation','ProviderEducation_id');
        }


	}//the end of class ProviderEducationsProviderEducation		
?>