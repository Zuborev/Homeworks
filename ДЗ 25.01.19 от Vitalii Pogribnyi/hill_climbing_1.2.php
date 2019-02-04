<?php

function hill($arr, $idx) {

	$maxIndex = $idx;
	$result = 0;
	
	if ($idx > 0 && $arr[$idx-1] > $arr[$maxIndex]) { 
        $maxIndex = $idx-1; 
        $result = -1;
    }
	if ($idx < (count($arr)-1) && $arr[$idx+1] > $arr[$maxIndex]) { 
        $maxIndex = $idx+1; 
        $result = 1;
    }
	
return $result;
}

function climbing($arr, $idx){
	
	$max = $idx;
	do {
		echo $max." ";
		$result2 = hill($arr,$max);
		$max = $max+ $result2;
	}
	while (hill($arr,$max) !== 0);
	echo $max;
} 

print_r(climbing([1,2,3,4,3,2], 5));
