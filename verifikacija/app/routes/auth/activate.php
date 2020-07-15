<?php

$app->get('/activate',$guest(),function() use ($app){

    $request = $app->request;
    $email = $request->get('email');
    $identifier = $request->get('identifier');
    $hashedIdentifier = $app->hash->hash($identifier);
    //die($identifier);
    $user = $app->user
    ->where('active',false)
    ->where('email',$email)
    ->first();

    if(!$user || !$app->hash->hashCheck($user->active_hash, $hashedIdentifier)){
      $app->flash('global','There was a problem activing you`re account');
      $app->response->redirect($app->urlFor('home'));
    }else{
      $user->activateAccount();
      $app->flash('global','You\'ve activated youre acc you can now log in');
      $app->response->redirect($app->urlFor('login'));
    }



})->name('activate');
