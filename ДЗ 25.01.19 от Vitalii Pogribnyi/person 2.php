<?php
$person = [
	'name' => 'Vasil',
	'salary' => 500,
	'currency' => 'USD',
	'salary_uah' => function($subject) {
		if ($subject['currency'] == 'USD') {
			return $subject['salary'] * 28;
		} else if ($subject['currency'] == 'EUR') {
			return $subject['salary'] * 30;
		}
	},
	'promote' => function(&$sub2) {
		return $sub2['salary'] =$sub2['salary']  +50;
	}
	
];

$person['promote']($person);//увеличит зарплату, она станет 550
echo $person['salary_uah']($person);//выводит 15400
?>