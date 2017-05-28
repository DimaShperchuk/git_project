<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 24.05.2017
 * Time: 20:11
 */

namespace app\controllers;

class MyController extends AppController
{
    public function actionIndex($id = null)
    {
        $hi = 'Hello, World!';
        $names = ['Ivanov','Petrov','Sidorov'];

            return $this->render('index', compact('names', 'hi', 'id'));
    }

}