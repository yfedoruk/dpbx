<?php
class DefaultController extends Controller
{
	public function beforeAction()
	{
		   if (Yii::app()->user->isGuest)
				$this->redirect(Yii::app()->createUrl('user/login'));

		   //something code right here if user valided
	}

}