<?php

array_map(function($x) use ($y) {
           return $y+1;
       }, $arr);

// static function Helper::mkPath;

$paths = array_map([new Helper(), 'mkPath'], $paths);


// method  $this->fullPath

$paths = array_map(array($this, 'fullPath'), $pathsList);


// mapping with keys
$languages = [
    'en' => 'gb',
    'ua' => 'uk'
];
$flipped = array_flip($languages);
$assoc_arr = array_reduce($languages, function ($result, $item) use ($flipped){
    $result[$flipped[$item]] = strtoupper($item);
    return $result;
}, $languages);


function array_map_assoc(callable $callback , array $array1) {
    $flipped = array_flip($array1);
    return array_reduce($array1, function ($result, $item) use ($flipped, $callback){
        $result[$flipped[$item]] = $callback($item);
        return $result;
    }, $array1);
}