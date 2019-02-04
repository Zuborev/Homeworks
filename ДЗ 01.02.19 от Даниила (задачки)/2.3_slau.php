<?php
function slau($arr1, $arr2){
	$delta = $arr1[0] * $arr2[1] - $arr1[1] * $arr2[0];
	$delta_x1 = $arr1[2] * $arr2[1] - $arr1[1] * $arr2[2];
	$delta_x2 = $arr1[0] * $arr2[2] - $arr1[2] * $arr2[0];
		if ($delta !== 0) {
			$x1 = $delta_x1/$delta;
			$x2 = $delta_x2/$delta;
			return "$x1; $x2 \n";
		} elseif ($delta == 0 && $delta_x1 == 0 && $delta_x2 == 0) {
			return "beskonechnoe reshenie";
		} else {
			return "ne imeet resheniy";
		}
}
echo slau([2,1,-5],[1,-2,3]);