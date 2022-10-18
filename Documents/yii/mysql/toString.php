<?php
$cmd = Yii::app()->createCommand();

$cmd->->select("name")
       ->from('package')
       ->where('id=:id', array(':id'=>5))
       ->queryRow();

// returns a PDO Statement - http://php.net/manual/en/class.pdostatement.php
Yii::log($cmd->getPdoStatement()->queryString);

//or 
$cmd->getText();