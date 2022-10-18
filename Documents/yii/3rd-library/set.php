<?php
1.
class GoogleController extends Controller
{
	public function beforeAction(){
		parent::beforeAction($action);
		Yii::import('application.vendor.*');
		require_once('Google/Client.php');
		return true;
	}
    public function actionIndex()
    {
		$client = new Google_Client();
		var_dump($client);
	}
}

2.
//// config.php
    'import' => array(
        'application.models.*',
        'application.components.*',
        'application.vendor.*',
        'ext.Dropbox.*',
        'application.helpers.*',
    ),
    
3. 
protected/vendor/Google
4. chmod -R 777 protected/vendor/Google //motherfucker!!!!!
   