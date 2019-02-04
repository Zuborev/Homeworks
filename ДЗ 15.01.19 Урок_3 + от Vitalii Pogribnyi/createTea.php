<?php
function createTea($type_tea) {
	if ($type_tea == 'зеленый') {
		echo " Заходим на кухню.\n Берем пакетик из ящика $type_tea чай.\n Заливаем пакетик кипятком";
	} 	elseif ($type_tea == 'черный') {
		echo " Заходим на кухню.\n Берем пакетик из ящика $type_tea чай.\n Заливаем пакетик кипятком";
	}	else echo "не того цвета чай";
	return $createTea;
}
echo createTea('черный');
