<?php
$file = fopen('array-fizz-buzz.txt', 'r');
$string = fgets($file);
$num = explode(","." ", $string);
$FIZZ = $num[0];
$BUZZ = $num[1];
$NUM3 = $num[2];
echo "FIZZ = $FIZZ, BUZZ = $BUZZ, NUM3 = $NUM3\n";
$arr_in = range(1, $NUM3);
$change = function($a) use($FIZZ, $BUZZ) {
	if (!($a % $FIZZ) & !($a % $BUZZ)) return "FB";
	if (!($a % $FIZZ)) return "F";
	if (!($a % $BUZZ)) return "B";
	else return $a;
};
$result = array_map($change, $arr_in);
print_r($result);  
?> 