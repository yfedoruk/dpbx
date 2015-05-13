<?php
$shareArr = Share::model()->findAllByAttributes(
    array('share_with' => $user->username, 'item_type' => 'directory'),
    array('order' => 'file_target DESC', 'limit'=>'1' )
);
// ??? findAllByAttributes(array('id'=>'1'),array('condition'=>'task_id'=='3' OR 'task_id'=='43' OR 'task_id'=='44'))