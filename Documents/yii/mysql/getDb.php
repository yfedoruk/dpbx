<?php
// db 
$curdb  = explode('=', Yii::app()->db->connectionString);
echo $curdb[2];
// host
$curhost = explode(';', $curdb[1]);
