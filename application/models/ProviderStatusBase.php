<?php
//Generated by buildORM from the cred:ProviderStatuss

	class ProviderStatusBase extends Eloquent{

		public static $table = 'ProviderStatuss';
 

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
        public function Provider_bunch()
        {
                return $this->has_many('Provider',ProviderStatus_id);
               // return $this->has_one('Provider',ProviderStatus_id);
        }


	}//the end of class ProviderStatus		
?>