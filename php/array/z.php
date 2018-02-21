<?php

$arr = [
    [
        'id' => 96,
        'shipping_no' => 212755,
        'part_no' => 'reterty',
        'description' => 'tyrfyt',
        'packaging_type' => 'PC'
    ],
    [
        'id' => 96,
        'shipping_no' => 212755,
        'part_no' => 'reterty',
        'description' => 'tyrfyt',
        'packaging_type' => 'PC'
    ],
    [
        'id' => 97,
        'shipping_no' => 212755,
        'part_no' => 'ZeoDark',
        'description' => 's%c%s%c%s',
        'packaging_type' => 'PC'
    ],

];

function array_sort($arr, $byField)
{
    $byField = (string)($byField);

    $result = array();
    foreach ($arr as $data) {
        $id = $data[$byField];
        if (isset($result[$id])) {
            $result[$id][] = $data;
        } else {
            $result[$id] = array($data);
        }
    }

    return $result;
}

$x = array_sort($arr, 'id');

var_dump($x);