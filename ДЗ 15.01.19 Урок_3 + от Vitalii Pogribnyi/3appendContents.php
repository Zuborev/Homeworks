<?php
function appendContents($file_name) {
	$file_out = fopen($file_name, 'r');
	$file_in = fopen('output.txt', 'a');
		while(!feof($file_out)) {
	$text = fgets($file_out);
	//echo $text;
	fputs($file_in, "\n\n$text");
	}
	return 'true';
}
echo appendContents('file2.txt');
?>