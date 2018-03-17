Three factory use cases:
1. Factory hide name of class and in future it can simply change to new name. For example:
<?php
    class Auto{}
    class Moto{}
    class Fabric{
        public function create(){
            return new Auto();
        }
    }
    $f = new Fabric();
    $f->create();
    //..
    $f->create();
    $f->create();
?>
here Auto may be simple changed to Moto in future, so your code is more immutable. 

2. Factory give chance to do some work after creating object, in all places(!) where object is created.

<?php
    public function create(){
        $obj = new Auto;
        echo 'wow! this is cool!';
        return $obj;
    }
?>

3. Factory create objects in runtime! For example, our controller is http://localhost/products/{type}

<?php

    class Fabric{
        public static function create($type){
            switch($type){
                case 'auto' : 
                    $ob = new Auto();
                    break;
                case 'moto' : 
                    $ob =  new Moto();
                    break;
            }
            return $obj;
        }
    }

$vehicle = Fabric::create($type);
//....
$vehicle = Fabric::create($type);
//...
$vehicle = Fabric::create($type);
?>
and we have only one switch in Facory, instead of everytime use switch in every places, where object is created.
Facory also hide constructor parameters:
 - and what would a happen if we suddenly added a new parameter to our __construct() function? You guessed right; that would mean updating every single instance where we call 'new'.

Also, factory may be simple function:
<?php
function factory($type){
    //switch
    return $object;
}

Notes:
Factory must return the most base class type of objects. Ideally type of interface or abstract class.
//Результат возвращаемый фабричным методом, должен всегда(!) соответствовать заданному интерфейсу
//Фабричный метод не обязательно должен возвращать объект, он так же может возвращать класс. При этом все наследники и родители так же должны возвращать класс.
