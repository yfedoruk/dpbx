<?php

$usercriteria = new CDbCriteria();
            $usercriteria->select="university_name";
            $usercriteria->condition="university_id=$university_id";
            $university=University::model()->findAll($usercriteria);

echo $university->university_name;

//The same is
$agent = University::model()->findByPK($university_id);
echo $agent-> university_name;


//confition 'in': in (1,2,3)
$userGroupIds = [1,2,3];
$criteria = new CDbCriteria;
$criteria->addInCondition ( "user_group_id" , $userGroupIds ) ;
$groupUsers = ClnShareEventGroupUser::model()->findAll($criteria);

//group by
    $criteria = new \CDbCriteria();
    $criteria->group= "group_id";
    ClnShareEventGroup::model()->findAllByAttributes(['owner' => $this->user_id, 'eventid' => $event_id], $criteria);

//update 
    $criteria = new \CDbCriteria();
    $criteria->condition = "eventid = {$event_id} AND owner = {$user_id} AND group_id = {$group_id}";
    $records= ClnShareEventGroup::model()->updateAll(["permissions" => $edit], $criteria);
