<?php
function korni($a, $b, $c){
	$D = $b**2 - 4*$a*$c;
	$x1 = (-$b+sqrt($D))/(2*$a);
	$x2 = (-$b-sqrt($D))/(2*$a);
	if ($D < 0) {
		return  "уравнение имеет 2 мнимых корня";
	} else {
		return "$x1, $x2\n";
		} 
}
echo korni(3, 6, 1);