<?php

$multi = function($ch1, $zn1, $ch2, $zn2) {
	$c = $ch1 * $ch2; 
	$g = $zn1 * $zn2;
		
		if (($c < $g) && ($c <> 0)) $i = abs($c);
		else $i = abs($g);
			while ((($c % $i) !== 0) || (($g % $i) !== 0)) {
				$i = --$i;
			}

	$c = $c/$i; 
	$g = $g/$i;

if ($c == 0) return "0";
else return "$c/$g";
};

$del = function($ch1, $zn1, $ch2, $zn2) {
	$c = $ch1 * $zn2; 
	$g = $zn1 * $ch2;
		
		if (($c < $g) && ($c <> 0)) $i = abs($c);
		elseif ($g == 0) $i = 1;
		else $i = abs($g);
			while ((($c % $i) !== 0) || (($g % $i) !== 0)) {
				$i = --$i;
			}

	$c = $c/$i; 
	$g = $g/$i;

if ($c == 0) return "0";
elseif ($g == 0) return "делить на 0 нельзя";
else return "$c/$g";
};

$sum = function($ch1, $zn1, $ch2, $zn2) {
	
	if ($zn1 > $zn2) $i = $zn1;
	else $i = $zn2;
	while ((($i % $zn1) !== 0) || (($i % $zn2) !== 0)) {
		$i = ++$i;
	}
	$ch1 = $ch1 * ($i/$zn1);
	$ch2 = $ch2 * ($i/$zn2);
	$c = $ch1 + $ch2; 
	$g = $i;

		if (($c < $g) && ($c <> 0)) $j = abs($c);
			else $j = abs($g);
				while ((($c % $j) !== 0) || (($g % $j) !== 0)) {
					$j = --$j;
				}

	$c = $c/$j; 
	$g = $g/$j;							
	
if ($c == 0) return "0";
else return "$c/$g";
};

$sub = function($ch1, $zn1, $ch2, $zn2) {
	
	if ($zn1 > $zn2) $i = $zn1;
	else $i = $zn2;
	while ((($i % $zn1) !== 0) || (($i % $zn2) !== 0)) {
		$i = ++$i;
	}
	$ch1 = $ch1 * ($i/$zn1);
	$ch2 = $ch2 * ($i/$zn2);
	$c = $ch1 - $ch2; 
	$g = $i;

		if (($c < $g) && ($c <> 0)) $j = abs($c);
				else $j = abs($g);
					while ((($c % $j) !== 0) || (($g % $j) !== 0)) {
						$j = --$j;
					}

	$c = $c/$j; 
	$g = $g/$j;		

if ($c == 0) return "0";
else return "$c/$g";
};

function operation($a, $b, $c, $d, $op) {
	$res = $op($a, $b, $c, $d);
	return $res;
}
echo operation(1, 4, 8, 4, $del);
?>