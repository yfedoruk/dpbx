<?php

// config main.php
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning, info',
                ),

// get some value
Yii::app()->log->routes[0]->levels
