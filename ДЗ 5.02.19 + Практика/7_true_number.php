<?php
$file = fopen('read_7.txt', 'r');
$string = fgets($file);
$arr1 = str_split($string);
$key = array_search(';', $arr1);
$sum = 0;
$n = 0; 
	for ($i=0; $i < $key;$i++){
		$sum = $sum + $arr1[$i];
		if ((int)$arr1[$i]) {
			echo $arr1[$i];
			$n = $n + 1;
		}	
	}

$celoe = intdiv($sum, $n);
$ostatok = $sum % $n;
echo ";".$arr1[$key+1]." ".$arr1[$key+3].PHP_EOL;
	if (($celoe == $arr1[$key+1]) && ($ostatok == $arr1[$key+3])){
		echo "true".PHP_EOL;
	}else echo "false, true $celoe $ostatok";