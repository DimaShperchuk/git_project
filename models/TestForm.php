<?php
/**
 * Created by PhpStorm.
 * User: shperchuk
 * Date: 27.05.2017
 * Time: 0:00
 */

namespace app\models;
use yii\base\Model;

class TestForm extends Model
{
     public $name;
     public $email;
     public $text;


     public function attributeLabels()
     {
            return [
                'name' => 'Имя',
                'email' => 'E-mail',
                'text' => 'Текст сообщения',
            ];
     }

     public function rules()
     {
         return [
             [['name','email'], 'required', 'message' => 'Поле обязатеьно'],
             ['email', 'email'],
           //  ['name', 'string', 'min' => 2, 'tooShort' => 'malo' ],
           // ['name', 'string', 'max' => 10, 'tooLong' => 'mnogo'],
             ['name', 'string', 'length' => [2, 5]],
            // ['name', 'myRule'],

             ['text', 'trim'],
             ['text', 'safe'],
         ];

     }
/*
     public function myRule($attr){
         if( !in_array($this->$attr, ['hello', 'world']) ){
             $this->addError($attr, 'wrong!');
         }
     }
*/
}