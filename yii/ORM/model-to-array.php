<?php

// 1.

$cats = Category::model()->findAll();
$count_cats = count($cats);
if($count_cats > 0){
    $arr_category = array();
    foreach($cats as $cat)
        array_push($arr_category,$cat->attributes);
}
print_r($arr_category);

// 2. the best!
$user_id = 123;
$criteria= new CDbCriteria();
	$criteria->select='id,title';
	$criteria->condition= "user_id={$user_id}";		//$criteria->addCondition( array('title' => $title) ); // $criteria->condition must be setted first.
$model = VideoPlaylist::model();
$playlist = $model->getCommandBuilder()
	->createFindCommand($model->tableSchema, $criteria)
	->queryAll();

//http://stackoverflow.com/questions/4435886/yii-model-to-array