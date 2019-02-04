<?php
function sum_num($array) {
	$sum = 0;
	for ($i = 0; $i<count($array); $i++) {
		$sum = $sum + $array[$i];
	} 
	return $sum;
}
echo sum_num([1,2,3,4,0.5,6])."\n";