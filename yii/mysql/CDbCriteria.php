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
    
// delete example
$crt = new CDbCriteria();
$crt->condition = 'owner_id=:user_id AND token=:token';
$crt->params = [':user_id' => $this->userId, ':token' => $hash];
$model = Share::model();
$res = $model->getCommandBuilder()->createDeleteCommand($model->getTableSchema(), $crt)->queryAll();


//multi insert. only from 1.1.14
$builder = Yii::app()->db->schema->commandBuilder;
$command=$builder->createMultipleInsertCommand('tbl_post', array(
  array('title' => 'record 1', 'text' => 'text1'),
  array('title' => 'record 2', 'text' => 'text2'),
));
$command->execute();
//or
$share = new Share();
$share->getCommandBuilder()->createMultipleInsertCommand($share->getTableSchema(), $data)->execute();



// joins. Complex examples
1. createCommand
Yii::app()->db->createCommand()
  ->select('name, started_date, finished_date')
  ->from('customer c')
  ->rightJoin('customer_employee ce', 'c.id=ce.customerid')
  ->leftJoin('accounting a', 'c.id=a.customerid')
  ->where('ce.employeeid=:id', array(':id'=>2))
  ->queryRow();

2. CdbCriteria
$criteria = new CDbCriteria;
$criteria->select    = 'name, started_date, finished_date';
$criteria->join      = 'RIGHT JOIN customer_employee ON customer.id=customer_employee.customerid ';
$criteria->join     .= 'LEFT JOIN accounting ON customer.id=accounting.customerid';
$criteria->condition = 'customer_employee.employeeid=:id';
$criteria->params    = array(':id'=>2);

$customers = Customers::model()->find($criteria);
