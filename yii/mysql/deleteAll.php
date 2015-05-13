<?php

public function actionDelCategory(){

	// $_GET['cat'] is array(3,4,5);
	$criteria = new CDbCriteria;
	$criteria->addInCondition('id',$_GET['cat']);
	ClnCategory::model()->deleteAll($criteria);
}