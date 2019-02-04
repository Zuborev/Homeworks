<?php
$file = fopen('double1.txt', 'r');
$file_w = fopen('double3.txt', 'a'); 
while(!feof($file)) {
	$string = fgets($file);
	//echo $string;
	fputs($file_w, strtoupper($string));
}
?>