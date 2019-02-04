<?php
echo "Give it to me!\n";
$handle = fopen ("php://stdin","r");
$number = fgets($handle);

switch ($number) {
	case ($number > 100):
		echo "Thanks, man!";
		break;
	case (($number > 10) && ($number < 100)):
		echo "OK:(";
		break;
	case (($number <= 10) || ($number == 100)):
		echo "WHAAAT????";
		break;
}
echo "\n";
switch ($number) {
	case ($number > 1000):
		echo "\n!!!!WOOOOWWWW!!!\n";
		break;
}
?>