<?php
//Generated by buildORM from the cred:ProviderCarriers

	

	class ProviderCarrierBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProviderCarriers';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function Carrier()
        {
                return $this->belongs_to('Carrier','carrier_id');
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


	}//the end of class ProviderCarrier		
?>