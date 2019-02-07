<?php
$handle = fopen("php://stdin", "r");
echo "Кол-во подъездов\n";
$ent = fgets($handle);
echo "Кол-во этажей в подъезде\n";
$lvl = fgets($handle);
echo "Кол-во квартир на этаже\n";
$rooms = fgets($handle);
echo "Номер квартиры\n";
$num_room = fgets($handle);


$num_entr = ceil($num_room/($lvl*$rooms));
	if (($ent*$lvl*$rooms) < $num_room) echo "квартира находится не в этом доме";
		else echo "квартира находится в подъезде №".$num_entr.PHP_EOL;

$num_lvl = ceil(($num_room - ($num_entr-1) * $lvl * $rooms)/$rooms);
echo "этаж №".$num_lvl.PHP_EOL;