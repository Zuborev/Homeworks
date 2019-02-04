<?php
for($i=0; $i<20; $i++) {
$arr[$i] = rand(0,10);
}

for($i=0; $i<20; $i++) {
	$x = rand(0, 20);
	unset($arr[$x]);
}
print_r($arr);
print_r(array_values($arr));