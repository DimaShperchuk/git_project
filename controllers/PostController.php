<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 24.05.2017
 * Time: 23:54
 */

namespace app\controllers;
use Yii;
use app\models\TestForm;

class PostController extends AppController
{
    public $layout = 'basic';

    public function actionIndex()
    {
        if( Yii::$app->request->isAjax )
        {
            return 'test';
        }

        $model = new TestForm();
        if( $model-> load(Yii::$app->request->post()) ){
            if($model-> validate()){
              Yii::$app->session->setFlash('success', 'dannie pprinztie');
              return $this->refresh();
            }
            else{
              Yii::$app->session->setFlash('error', 'dannie error');
            }
        }

        return $this->render('index', compact('model'));
    }

    public function actionShow()
    {
        $this->view->title = 'одна стаття';

        return $this->render('show');
    }
}