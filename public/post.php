<?php
	if(count($_POST) > 0){
echo "<h1>  _POST was </h1><pre>";
		var_export($_POST);
		echo "</pre>";
	}else{

	echo "<html><head></head><body><form action='/post.php' method='POST'>
Test:<input type='text' value='' name='test'><br>
<input type='submit'><br>
</form></body></html>
";

	}
?>
