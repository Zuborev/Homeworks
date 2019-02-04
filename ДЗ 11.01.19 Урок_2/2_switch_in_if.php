<?php
echo "Give me the mark!\n";
$handle = fopen ("php://stdin","r");
$mark = fgets($handle);

if ($mark == 2) {
    echo "I am better!!";
} elseif ($mark == 3) {
    echo "OK:(";
} elseif ($mark == 4) {
    echo "I am good:)";
} elseif ($mark == 5) {
	echo "YeeeeWhaaaa!!!!";
} else echo "Uuuupppsss";
echo "\n";
?>