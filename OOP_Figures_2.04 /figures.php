<?php
class Figure {
	
	public $type;
	
	public function getInfo() {
		return $this->type;
	}
}
class Rectangle extends Figure {

	public $a, $b;
	protected function setA() {
		return $a = $this->a;
	}
	protected function setB() {
		return $b = $this->b;
	}

	public function getArea() {
		echo parent::getInfo().'-'. $this->setA()*$this->setB() . 'm2'.PHP_EOL;
		
	}
}
class Square extends Rectangle {

 	public function getArea() {
 		echo parent::getinfo().'-'. parent::setA()**2 . 'm2'.PHP_EOL;
 	}
}
$obj1 = new Rectangle();
$obj1->type='Rectangle';
$obj1->a=2;
$obj1->b=4;
$obj1->getInfo();
$obj1->getArea();

$obj2 = new Square();
$obj2->type='Square';
$obj2->a=6;
$obj2->getInfo();
$obj2->getArea();