<?php
function litera($array, $a) {
	$num = 0;

	for ($i = 0; $i < count($array); $i++) {
		if ($array[$i] == $a) {
			$num++;
		}
	
	}
	return $num;
}

$file = fopen('read.txt', 'r');
$string = fgets($file);
$arr = str_split($string);
echo litera($arr, "e");  
