<?php
//Generated by buildORM from the cred:Tags

	

	class TagBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Tags';
 

        //autogenerated this function... 
        public function TagLink_bunch()
        {
                return $this->has_many('TagLink',tag_id);
               // return $this->has_one('TagLink',tag_id);
        }


	}//the end of class Tag		
?>