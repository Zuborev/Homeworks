<?php
function min_num($a, $b) {
	if ($a < $b) {
		return $a;
	}elseif ($a == $b) {
		return "ravni";
	}else {
		return $b;
	}
}
echo min_num(5, 2)."\n";