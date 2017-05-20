<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 20.05.2017
 * Time: 17:31
 */

namespace app\controllers;


class PostController extends AppController
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionTest()
    {
        return $this->render('test');
    }
}