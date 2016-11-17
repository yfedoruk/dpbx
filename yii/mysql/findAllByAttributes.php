<?php

//select only some fields
$user_id = Yii::app()->session['user_id'];
$criteria= new CDbCriteria();
$criteria->select='id,title';
$playlist = VideoPlaylist::model()->findAllByAttributes( array('user_id' => $user_id), $criteria );