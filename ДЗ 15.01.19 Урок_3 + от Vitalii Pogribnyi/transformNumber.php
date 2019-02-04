<?php
function transformNumber($num){
	if (($num > 15) || ($num < 3)) {
		echo $num;
	} else echo 3;
	return $transformNumber;
}
echo transformNumber(20);
?>