<?php

require 'core.inc.php';
require'connect_db.inc.php';

if(loggedin()){
  echo 'You are loged in. <a href = "logout.php">Log out</a>';
  echo getname('firstname');
}else{
include 'login_form.inc.php';
}
?>
