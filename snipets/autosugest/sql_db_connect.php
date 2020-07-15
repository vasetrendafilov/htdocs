<?php
  $eror = 'Could not conect';
  $mysql_host = 'localhost';
  $mysql_user = 'root';
  $mysql_pass = '';
  $mysql_database = 'ajax';
  if(!@mysql_connect($mysql_host , $mysql_user , $mysql_pass) or !@mysql_select_db($mysql_database)){
  
  die($eror);

  }
?>
