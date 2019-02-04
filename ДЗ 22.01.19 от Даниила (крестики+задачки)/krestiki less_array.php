<?php

function generate(&$arr) {
  $arr = array_merge(array_fill(0, 5, 'X'), array_fill(5, 4, '0'));
  shuffle($arr);
}

function field($arr) {
  for ($i=0; $i < 9; $i++) { 
    print($arr[$i]?'X':'O');
    print " ";
    if(in_array($i, [2, 5, 8])) print(PHP_EOL);
  }
  return true;
}

function check_g($arr){
  foreach ([0,3,6] as $first) {
    if($arr[$first]){
      if($arr[$first + 1]){
        if($arr[$first + 2]){
          print "We have found Horizontal!";
          print PHP_EOL . $first/3 + 1 . PHP_EOL;
        }
      }
    }
  }
}

function check_v($arr){
  foreach ([0,1,2] as $second) {
    if($arr[$second]){
      if($arr[$second + 3]){
        if($arr[$second + 6]){
          print "We have found Vertical!";
          print PHP_EOL . $second + 1 . PHP_EOL;
        }
      }
    }
  }
}

function check_d($arr){
  foreach ([0, 2] as $third) {
    if(($arr[$third])&&($third == 0)){
      if($arr[$third + 4]){
        if($arr[$third + 8]){
          print "We have found diagonal!";
          print PHP_EOL . "backslash"   . PHP_EOL;
        }
      }
    } elseif (($arr[$third])&&($third == 2)){
      if($arr[$third + 2]){
        if($arr[$third + 4]){
         	print "We have found diagonal!";
          	print PHP_EOL . "slash"   . PHP_EOL;
        }
      }
    }
  }
}
generate($arr);
field($arr);
check_g($arr);
check_v($arr);
check_d($arr);