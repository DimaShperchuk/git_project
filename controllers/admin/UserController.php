<?php

/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 24.05.2017
 * Time: 21:05
 */

namespace app\controllers\admin;

use app\controllers\AppController;

class UserController extends AppController
{
    public function actionIndex()
    {
        return $this->render('index');
    }
}