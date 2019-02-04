<?php
echo "Определим какое число больше\n";
$handle = fopen("php://stdin", "r");
echo "Введите первое число!\n";
$num1 = trim(fgets($handle));
echo "Введите второе число!\n";
$num2 = trim(fgets($handle));
if ($num1 > $num2) {
	echo "первое максимальное";
} elseif ($num1 < $num2) {
	echo "второе максимальное";
} else echo "они равны";
?>