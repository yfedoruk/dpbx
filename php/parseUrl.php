<?php

// How to parse simpl url ???

// parse url query

$urlArr = array_map(
	function($str){
		return explode('=', $str);
	},
	explode('&', parse_url($URL_FOR_PARSING, PHP_URL_QUERY))
);
foreach($urlArr as $k => $v){ $params[$v[0]] = $v[1]; }