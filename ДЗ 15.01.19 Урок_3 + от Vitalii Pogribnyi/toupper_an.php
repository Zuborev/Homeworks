<?php

$toupper = function($input) {
  return strtoupper($input);
};

function op($doc1, $doc2, $bingo){
	$file = fopen($doc1, 'r');
	$file_w = fopen($doc2, 'a'); 
	while(!feof($file)) {
		$string = fgets($file);
		//echo $string;
		$res = $bingo($string); 
		fputs($file_w, $res);
	}
return $op;
}
echo op('double1.txt', 'double4.txt', $toupper);
?>