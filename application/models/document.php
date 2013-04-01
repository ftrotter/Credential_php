<?php


	class Document extends Eloquent{


		function getImageURL(){

			if(strlen($this->imageURL) > 5){
				return $this->imageURL;
			}else{
				//return the default image link
				return 'http://www-03.ibm.com/software/lotus/symphony/gallery.nsf/GalleryClipArtAll/8CE0CE18AB15F52185257596003225D4/$File/Icon-Document03-Blue.png';
			}
			

		}

	}

?>
