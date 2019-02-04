<?php
function back($array) {
	for ($i = 1; $i <= count($array); $i++) {
		print_r($array[count($array) - $i]);
	}
}
$file = fopen('read.txt', 'r');
$string = fgets($file);
$arr = str_split($string);
back($arr);
