<?php
ob_start();
session_start();
$current_file = $_SERVER['SCRIPT_NAME'];
if(isset($_SERVER['HTTP_REFERER'])and !empty($_SERVER['HTTP_REFERER'])){
$http_referer = $_SERVER['HTTP_REFERER'];
}
function loggedin(){
  if(isset($_SESSION['user_id']) and !empty($_SESSION['user_id'])){
    return true;
  }else{return false;}
}
function getname($filed){
  $query = "SELECT `$filed` FROM `db_users` WHERE `id`= '".$_SESSION['user_id']."' ";
  if($query_run=mysql_query($query)){
    if($query_resault=mysql_result($query_run, 0 , $filed)){
            return $query_resault;
    }else{return 'not found';}

  }else{echo mysql_error();}
}


?>