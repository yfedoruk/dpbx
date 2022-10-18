<?php

public function relations()
{
	// NOTE: you may need to adjust the relation name and the related
	// class name for the relations automatically generated below.
	return array(
		'user' => array(self::BELONGS_TO, 'User', 'user_id'),
		'cat' => array(self::BELONGS_TO, 'TasksCat', 'cat_id'),
	);
}

Tasks::model()->with('cat')->findAllByAttributes(array("user_id" => $user_id));

$task->cat->title,