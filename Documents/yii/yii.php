<?php
class Yii extends YiiBase
{
    public static function d ($var){
        Yii::import('application.vendors.*');
        require_once('Zend/Debug.php');
        zend_debug::dump($var);
    }
    public static function met($class, $method){
        $rc = new ReflectionClass($class);
        $objects = $rc->getMethods();
        foreach($objects as $key => $ob){
           if($ob->getName() != $method)
              unset($objects[$key]);
        }
        yii::d($objects);
    }
    public static function ms($var){
        yii::d(get_class_methods($var));
    }
    public static function vs($var){
        yii::d(get_class_vars($var));
    }
    public static function cs($obj){
        yii::d(get_class($obj));
    }
}
function d ($var){
	Yii::import('application.vendors.*');
	require_once('Zend/Debug.php');
	zend_debug::dump($var);
}
function met($class, $method){
	$rc = new ReflectionClass($class);
	$objects = $rc->getMethods();
	foreach($objects as $key => $ob){
	   if($ob->getName() != $method)
		  unset($objects[$key]);
	}
	yii::d($objects);
}
function ms($var){
	yii::d(get_class_methods($var));
}
function vs($var){
	yii::d(get_class_vars($var));
}
function cs($obj){
	yii::d(get_class($obj));
}
