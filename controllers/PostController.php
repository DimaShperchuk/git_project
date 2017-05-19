<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 18.05.2017
 * Time: 23:00
 */

namespace app\controllers;


class PostController extends AppController
{
    public function actionIndex($name)
    {

        return $this->render("index", compact("name"));
    }

    public function actionTest()
    {
        return $this->render("test");
    }

}