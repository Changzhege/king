<?php	
	//运算 
	$m1 = $_POST['num1'];
	$m2 = $_POST['num2'];
	$c = $_POST['c'];

	//
	$res = 0;
	switch($c){
		case "+":$res =$m1+$m2; break;
		case "-":$res =$m1-$m2; break;
		case "x":$res =$m1*$m2; break;
		case "/":$res =$m1/$m2; break;
		
	}

	echo $m1.$c.$m2."=".$res;