<?php

function number($a) {
	if ($a < 0) {
		return "otricatelnoe";
	}elseif ($a > 0) {
		return "pologitelnoe";
	}else {
		return "zero";
	}
}
echo number(15); 