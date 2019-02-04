<?php
echo "Введите три целых числа\n";
$handle = fopen("php://stdin", "r");
echo "FIZZ =";
$FIZZ = fgets($handle);
echo "BUZZ =";
$BUZZ = fgets($handle);
echo "NUM3 =";
$NUM3 = fgets($handle);
while ($FIZZ == 0) {
	echo "FIZZ не может быть 0\n", "FIZZ =";
	$FIZZ = fgets($handle);
	echo $FIZZ;
}
while ($BUZZ == 0) {
	echo "BUZZ не может быть 0\n", "BUZZ =";
	$BUZZ = fgets($handle);
	echo $BUZZ;
}
if ($NUM3 > 0) {
	for ($i = 1; $i <= $NUM3; $i++) {
		switch ($i) {
    		case ((($i % $FIZZ) == 0) && (($i % $BUZZ) == 0)):
        		echo " ","FB";
        		break;
    		case (($i % $FIZZ) == 0):
        		echo " ", "F";
        		break;
    		case (($i % $BUZZ) == 0):
        		echo " ", "B";
        		break;
    		default:
    			echo " ", $i;
    	}
	} 
} else 
	for ($i = 1; $i >= $NUM3; $i--) {
		switch ($i) {
    		case ((($i % $FIZZ) == 0) && (($i % $BUZZ) == 0)):
        		echo " ", "FB";
        		break;
    		case (($i % $FIZZ) == 0):
        		echo " ", "F";
        		break;
    		case (($i % $BUZZ) == 0):
        		echo " ", "B";
        		break;
    		default:
    			echo " ", $i;
    	}
    }
?>