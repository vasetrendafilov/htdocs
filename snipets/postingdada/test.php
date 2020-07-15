<?php
      $v='VASe';
   if(!ctype_upper($v) and !ctype_lower($v)) {
     echo 'great';
   } else if(ctype_upper($v)) {
    echo 'all uppercase';
   } else if(ctype_lower($v)){
    echo 'all lower case';
   }

?>