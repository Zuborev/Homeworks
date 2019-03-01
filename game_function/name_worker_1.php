<?php
function worker_info(){
	$file = fopen('name_worker.txt', 'r');
	$text = fgets($file);
	$array1 = explode(' ', $text);
	$sum_job = 0;
	$speed = 120;
	$coef = 100;
	$k1 = 0.5;
	$k2 = 0.75;
	$k3 = 1;
	$salary_j = 800; 
	$salary_m = 1200;
	$salary_s = 1800;
		
		for ($i=0; $i <10; $i++) { 
			$name[$i]=$array1[rand(0,50)];
			
			if (substr($name[$i], 0, 2) == "Mr") {
				$sex = "male";
			} else $sex = "female";
			
				$input_lvl = ["Junior", "Middle", "Senior"];
				$lvl = $input_lvl[rand(0, 2)];
			
				$input_job = ["developer", "sale-manager"];
				$job = $input_job[rand(0, 1)];
				
			if ($job == "sale-manager") {
				$sum_job++;
				$profit = 'coef';
				$num = $coef;	
			} else {
			 	$profit = 'speed';
			 	$num = $speed;
			 }

			if ($lvl == "Junior") {
				$pay = $salary_j;
				$res = $k1 * $num;
			} elseif ($lvl == "Middle") 
			{ $pay = $salary_m;
				$res = $k2 * $num;	
			} else {
				$pay = $salary_s;
				$res = $k3 * $num;
			}

			if ($sum_job == 10) $job = "developer";

			$worker[$i] = ['name' => $name[$i],'sex'=> $sex,'level'=> $lvl,'job'=> $job,'salary'=> $pay, $profit => $res];
		}
	return $worker;
}
print_r(worker_info());