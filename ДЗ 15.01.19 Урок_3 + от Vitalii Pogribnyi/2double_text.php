<?php
$file = fopen('double1.txt', 'r');
$file_w = fopen('double2.txt', 'a'); 
while(!feof($file)) {
	$string1 = fgets($file);
	//echo $string1;
	fputs($file_w, str_repeat("$string1", 2));
}
?>