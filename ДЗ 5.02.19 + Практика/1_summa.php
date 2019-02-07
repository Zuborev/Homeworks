<?php

function summa_arr($array) {
	$sum = 0;
	for ($i=0; $i<count($array); $i++){
		$sum = $sum + $array[$i];
	}
	return $sum;	
}
echo summa_arr([1.1, 2.2, 3.2, 4.2]); 