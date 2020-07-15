    <form action="vase.php" method="GET">
      Chose a food type:
     <select name = "uh">
     <option value='y'>Unhealty</option>
     <option value='h'>Healty</option>
     </select><br><br>
     <input type = "submit" value= "Submit">
 </form>

<?php

  require 'sql_db_connect.php';
  if(isset($_GET['uh'])&&!empty($_GET['uh'])){
       $uh = $_GET['uh'];
    $query = " SELECT `name` , `calories` FROM `food` WHERE `healty/badd`='$uh' ORDER BY `id`";

    if( $query_run = mysql_query($query)){



    if(mysql_num_rows($query_run) == null){
        echo 'There`s no data for the query' ;
    }else{

      while($query_row = mysql_fetch_assoc($query_run)){
        $food = $query_row['name'];
        $calories = $query_row['calories'];
          echo $food.' has '.$calories.' calories'.'<br>';
      }
    }
  }else{
        echo mysql_error();
        }   
               }  else{
                 
                  echo 'nothing';

               }
?>