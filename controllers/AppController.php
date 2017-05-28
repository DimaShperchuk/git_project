<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 24.05.2017
 * Time: 23:51
 */

namespace app\controllers;


use yii\web\Controller;

class AppController extends Controller
{
    public function debug($arr)
    {
        echo '<pre>' . print_r($arr, true) . '</pre>';
    }
}

