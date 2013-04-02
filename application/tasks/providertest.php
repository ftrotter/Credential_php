<?php

class Providertest_Task extends Task{

    public function run($arguments)
    {


		$Provider = Provider::find(1); //this should load the first provider which is our test provider...

		var_dump($Provider);
		
		$CorrPhone = $Provider->Corr_Phone;
		
		$hard_coded_phone = '1231231234';
		if(strncmp($CorrPhone->phone,$hard_coded_phone) == 0){
			//then we are hitting the DB successfully...
			echo "CorrPhone() works on the Provider Object\n";
			
		}else{
			echo "FAIL!! did you change the hard coded phone from $hard_coded_phone??\n";
			exit();

		}
		

    }

}



?>
