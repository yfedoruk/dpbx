<?php
$criteria = new \CDbCriteria();
$criteria->condition = "eventid = {$event_id} AND owner = {$user_id} AND group_id = {$group_id}";   // where update 
$whatToUpdate = ["permissions" => 7];
$records= ClnShareEventGroup::model()->updateAll($whatToUpdate, $criteria);