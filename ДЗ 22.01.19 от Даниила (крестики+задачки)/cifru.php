<?php
$file = fopen("php://stdin", 'r');
echo "1st number"." ";
$a = fgets($file);
$arr1 = str_split($a);
$sum = array_sum($arr1);
echo ($a % $sum) ? "number is not correct" : $sum;