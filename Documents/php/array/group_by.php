<?php
//http://stackoverflow.com/questions/12706359/php-array-group
Array
(
    [0] => Array
        (
            [id] => 96
            [shipping_no] => 212755-1
            [part_no] => reterty
            [description] => tyrfyt
            [packaging_type] => PC
        )

    [1] => Array
        (
            [id] => 96
            [shipping_no] => 212755-1
            [part_no] => dftgtryh
            [description] => dfhgfyh
            [packaging_type] => PC
        )

    [2] => Array
        (
            [id] => 97
            [shipping_no] => 212755-2
            [part_no] => ZeoDark
            [description] => s%c%s%c%s
            [packaging_type] => PC
        )

)
//How can I group the array by id? 

$result = array();
foreach ($arr as $data) {
  $id = $data['id'];
  if (isset($result[$id])) {
     $result[$id][] = $data;
  } else {
     $result[$id] = array($data);
  }
}
