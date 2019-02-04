<?php

$sum = function($c, $d) {
	return $c + $d;
};

$sub = function($e, $f) {
	return $e - $f;
};

$multi = function($n, $p) {
	return $n * $p;
};

$div = function($k, $l) {
	if ($l !== 0) return $k / $l;
	else echo "делить на 0 нельзя";
};

function operation($a, $b, $op) {
	$res = $op($a, $b);
	return $res;
}
echo operation(3, 5, $div);
?>