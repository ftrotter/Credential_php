<?php
//Generated by buildORM from the cred:TagLinks

	namespace nod\orm; //so this file should live under models/nod/orm

	class TagLinkBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'TagLinks';
 

        //autogenerated this function... 
        public function row()
        {
                return $this->belongs_to('row','row_id');
        }


        //autogenerated this function... 
        public function Tag()
        {
                return $this->belongs_to('Tag','Tag_id');
        }


        //autogenerated this function... 
        public function User()
        {
                return $this->belongs_to('User','User_id');
        }


	}//the end of class TagLink		
?>