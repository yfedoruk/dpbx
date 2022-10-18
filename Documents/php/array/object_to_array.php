<?php 
/**
* stdClass to array.
* do not use (array) $stdObject, because it set $object->1 => to string key '1', not to integer 1;
*
*/

$array = json_decode(json_encode($stdObject), true);


//
$x = json_decode(json_encode($object), True) // will decode object into an array, but it's not binary safe. Essentially if it's not plaintext it might break in JSON.


// http://forum.php.su/topic.php?forum=1&topic=967&postid=1431512858

// И еще, для клиентских приложений может быть критично:
echo json_encode(new StdClass()) . ' != ' . json_encode(array());

//
class Foo{}
$foo = new Foo();
echo ($foo instanceof stdClass)?'Y':'N';
