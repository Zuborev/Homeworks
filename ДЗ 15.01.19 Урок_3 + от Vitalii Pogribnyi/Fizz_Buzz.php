<?php
function input($a, $b, $c){
	for ($i = 1; $i <= $c; $i++) {
		switch ($i) {
    		case ((($i % $a) == 0) && (($i % $b) == 0)):
       			echo "FB"." ";
       			break;
    		case (($i % $a) == 0):
       			echo  "F"." ";
       			break;
    		case (($i % $b) == 0):
       			echo "B"." ";
       			break;
    		default:
    			  echo "$i"." ";
      }
    }
    return $input;
}

$file = fopen('fizz-buzz.txt', 'r');
  $string = fgets($file);
  $num = explode(",", $string);
  $FIZZ = $num[0];
  $BUZZ = $num[1];
  $NUM3 = $num[2];
  echo $FIZZ;
  echo $BUZZ;
  echo "$NUM3\n";
  echo input($FIZZ, $BUZZ, $NUM3);
?>