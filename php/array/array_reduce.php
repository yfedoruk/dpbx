<?php
//how to escape undefined index notice
$sums = array_reduce($data['sets'], function($result, $cur){
	$result['tth'] += $cur[0];
	$result['tta'] += $cur[1];
	return $result;
},['tth' => 0, 'tta' => 0]);
