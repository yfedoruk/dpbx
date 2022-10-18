<?php
    $command = Yii::app()->db->createCommand("update user set hash = ENCRYPT('{$user->username}') where username='{$user->username}'");
    $command->execute();
