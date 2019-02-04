<?php

function litera($array) {
$rez = [];
	for ($i=0; $i<count($array); $i++){
		$num = $array[$i];
		if (array_key_exists($num, $rez)) { 
			$rez[$num] = $rez[$num] + 1;
		}else $rez[$num] = 1;
	}
	print_r($rez);
}
$arr = str_split("molokokkmkolkkgfkckhgxckhx");
litera($arr);  
