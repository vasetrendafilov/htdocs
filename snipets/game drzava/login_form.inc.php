<?php

 if(isset($_POST['username'])and isset($_POST['password'])){
     if(!empty($_POST['username']) and !empty($_POST['password'])){
       $username = $_POST['username'];
       $password = md5($_POST['password']);
$query="SELECT `id` FROM `db_users` WHERE `username` ='".mysql_real_escape_string($username)."' AND `password` ='".mysql_real_escape_string($password)."'";
         if($query_run = mysql_query($query)){
           $query_num_rows = mysql_num_rows($query_run);
           if($query_num_rows==0){
            echo 'Invalid username password combination';
          }else if ($query_num_rows == 1){
            $user_id = mysql_result($query_run,0,'id');
            $_SESSION['user_id']=$user_id;
            header('Location: homepage.php');
            }
       }else{echo 'can conect'.mysql_error();}

     }else{echo 'Fill the fields!!';}
  }
?>
  <form action="<?php $current_file;?>" method="POST">
Username: <input type="text" name="username">
Password: <input type="password" name="password"> <input type="submit" value="Log in">
