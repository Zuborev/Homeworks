<?php

function summa_arr($b) {
	
	do{
	 $sum = 0;
	 $arr1 = str_split($b);
	 for ($i=0; $i<count($arr1); $i++){
	 	$sum = $sum + $arr1[$i];
	 	
	 }
	 $b = $sum;
	
	} while ($b>=10);
	return $b;
}
echo summa_arr(138);