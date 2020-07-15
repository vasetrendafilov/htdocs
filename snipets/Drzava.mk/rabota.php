<?php
 require_once 'core/init.php';
 $user=new User();
 if($user->isLoggedIn()){
  $data=$user->data();
echo $data->email;


 }
