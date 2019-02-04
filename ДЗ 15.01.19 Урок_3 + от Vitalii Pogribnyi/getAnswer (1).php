<?php
function getAnswer($question){
	if ($question !== "Мне завтра повезет?") echo "некорректный вопрос"; 
	else $c = rand(1, 2);
	
	if ($c == 1) echo "yes";
	else echo "no";
return $getAnswer;
}


echo getAnswer("Мне завтра повезет?");
?>