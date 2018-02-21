<?php
//Use array_search to get the key and remove it with unset if found:

if (($key = array_search('strawberry', $array)) !== false) {
    unset($array[$key]);
}
//array_search returns false (null until PHP 4.2.0) if no item has been found.
//And if there can be multiple items with the same value, you can use array_keys to get the keys to all items:

foreach (array_keys($array, 'strawberry') as $key) {
    unset($array[$key]);
}


// II

$arr = array_filter($arr, function ($v) { return $v != 'some_value'; }