<?php

$authentcationCheck = function($required) use ($app){
  return function() use ($required, $app){
        if( (!$app->auth && $required)||($app->auth && !$required)){
          $app->redirect($app->urlFor('home'));
        }};
};

$authenticated = function() use ($authentcationCheck){
  return $authentcationCheck(true);
};
$guest = function() use ($authentcationCheck){
  return $authentcationCheck(false);
};
