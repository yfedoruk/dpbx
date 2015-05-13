<?php

$usercriteria = new CDbCriteria();
            $usercriteria->select="university_name";
            $usercriteria->condition="university_id=$university_id";
            $university=University::model()->findAll($usercriteria);

echo $university->university_name;

//The same is
$agent = University::model()->findByPK($university_id);
echo $agent-> university_name;