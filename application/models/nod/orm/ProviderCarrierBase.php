<?php
//Generated by buildORM from the cred:ProviderCarriers

	namespace nod\orm; //so this file should live under models/nod/orm

	class ProviderCarrierBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'ProviderCarriers';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','Provider_id');
        }


        //autogenerated this function... 
        public function Carrier()
        {
                return $this->belongs_to('Carrier','Carrier_id');
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


	}//the end of class ProviderCarrier		
?>