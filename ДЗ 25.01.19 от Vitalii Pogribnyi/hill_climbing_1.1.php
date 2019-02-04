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

print_r("result = ".hill([-1, 0,-2,4,3,2], 0)."\n");
print_r("result = ".hill([-1, -2,2,4,3,2], 0)."\n");
print_r("result = ".hill([-1,-1,-2,4,0,-1], 0)."\n");

