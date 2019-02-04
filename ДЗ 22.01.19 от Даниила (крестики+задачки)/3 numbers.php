<?php
$file = fopen("php://stdin", 'r');
echo "1st number"." ";
$a = fgets($file);
echo "2nd number"." ";
$b = fgets($file);
echo "3d number"." ";
$c = fgets($file);
if (($a >= $b) && ($a >= $c)) echo "max number $a";
elseif (($b >= $a) && ($b >= $c)) echo "max number $b";
else echo "max number $c";
?>