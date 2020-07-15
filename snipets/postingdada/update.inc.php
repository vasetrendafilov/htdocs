<?php
require 'sql_db_connect.php';

if(isset($_POST['text']) and !empty($_POST['text'])){
    $text=$_POST['text'];
    $query="INSERT INTO `names` VALUES('','".mysql_real_escape_string($text)."')";
      if($query_run=mysql_query($query)){
        echo 'Data inserted';
      }
 }else{echo 'Pleace write something';}

?>