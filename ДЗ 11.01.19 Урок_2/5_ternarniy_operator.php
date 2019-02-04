<?php
echo "Посчитайка\n";
$A = random_int(1, 9);
$B = random_int(1, 9);
echo "$A", "+", "$B", "*", "$A", "=\n";
$handle = fopen("php://stdin", "r");
echo "Сколько?\n";
$num1 = fgets($handle);
echo ($num1 == ($A + $B * $A)) ? "Genius!" : "Stupid!"; 
?>