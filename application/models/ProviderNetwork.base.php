<?php
//Generated by buildORM from the ourlaravel:ProviderNetworks

	class ProviderNetwork_base extends Eloquent{

		public static $table = 'ProviderNetworks';
 

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','Provider_id');
        }


        //autogenerated this function... 
        public function Network()
        {
                return $this->belongs_to('Network','Network_id');
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


	}//the end of class ProviderNetwork		
?>