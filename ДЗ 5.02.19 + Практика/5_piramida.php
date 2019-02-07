<?php
$k = 17;
	for ($i=1; $i <= $k; $i=$i+2) {
		echo probel($k,$i);
		echo str_repeat("*", $i);
		print PHP_EOL;
	}

	for ($i=($k-2); $i >= 1; $i=$i-2) {
		echo probel($k,$i);	
		echo str_repeat("*", $i);
		print PHP_EOL;
	}

function probel($a, $b) {
	return str_repeat(" ", ($a-$b)/2);
}