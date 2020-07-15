<?php
require_once 'core/init.php';
if(isset($_GET['enable'])){
  if($_GET['enable']==1){
  echo (curent_energy()/100)*100;
 }
}
?>
