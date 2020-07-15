<?php
require 'core.inc.php';
require 'connect_db.inc.php';
//-------------------------------------------PASSWORD---------------------------------------------------------------
if(isset($_GET['search_text'])){
    $search_text = $_GET['search_text'];
    $minpass='8-character minimum, ';
    $addsimbol='atleast one simbol, ';
    $addnumber='atleast one number, ';
    $lowercase='atleast one uppercaseleater, ';
    $uppercase='atleast one lowercaseleater ';
    if(!empty($search_text)){
  
      if(strlen($search_text)>=8){
         $minpass='ok ';
      }
    if(strpos($search_text,'!') or strpos($search_text,'@')or strpos($search_text,"%23")or strpos($search_text,'$')or strpos($search_text,'%')or strpos($search_text,'^')or strpos($search_text,'&')or strpos($search_text,'*')){
       $addsimbol='ok ';
    }
    if(strpos($search_text,'1') or strpos($search_text,'2')or strpos($search_text,'3')or strpos($search_text,'4')or strpos($search_text,'5')or strpos($search_text,'6')or strpos($search_text,'7')or strpos($search_text,'8')or strpos($search_text,'9')or strpos($search_text,'0')){
       $addnumber='ok ';
    }
    
     if(!ctype_upper($search_text) and !ctype_lower($search_text)) {
           $lowercase='ok ';
           $uppercase='ok ';
         } else if(!ctype_upper($search_text)) {
           $uppercase='ok ';
         } else if(!ctype_lower($search_text)){
           $lowercase='ok ';
         }
  
  
    }
    echo $minpass.$addsimbol.$addnumber.$uppercase.$lowercase.'    >>'.$search_text;
}
//-------------------------------------------------USRENAME------------------------------------------------------------
 if(isset($_GET['username'])){
  $search_text = $_GET['username'];
    if(!empty($search_text)){

             $query ="SELECT `username` FROM `db_users` WHERE `username` = '".mysql_real_escape_string($search_text)."'";
             if($query_run=mysql_query($query)){
                if(mysql_num_rows($query_run) == 1){
                  echo 'username is taken';
                } else{
                 echo 'GREAT';
                }
        }
    }
 }



 ?>