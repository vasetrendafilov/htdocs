                                      <html>
<head>
<?php

    if(isset($_POST['search_text']) and !empty($_POST['search_text'])and isset($_POST['username']) and !empty($_POST['username'])){

     echo  $pass=$_POST['search_text'];
    echo   $user=$_POST['username'];
}


?>

<script type="text/javascript">
function findmatch(){

    if(window.XMLHttpRequest) {
       xmlhttp = new XMLHttpRequest();
    } else {
      xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
    }
    xmlhttp.onreadystatechange = function() {
     if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
       document.getElementById('adiv').innerHTML = xmlhttp.responseText;
     }
    }
    xmlhttp.open('GET', 'search.inc.php?search_text='+document.getElementById('pass1').value , true);
    xmlhttp.send();

}

function finduser(){

    if(window.XMLHttpRequest) {
       xmlhttp = new XMLHttpRequest();
    } else {
      xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
    }
    xmlhttp.onreadystatechange = function() {
     if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
       document.getElementById('username').innerHTML = xmlhttp.responseText;
     }
    }
    xmlhttp.open('GET', 'search.inc.php?username='+document.getElementById('user').value , true);
    xmlhttp.send();

}
   function compare(){

   var pass1 = document.getElementById("pass1").value;
   var pass2 = document.getElementById("pass2").value;
         if(pass1 != ''){
         if(pass1 == pass2){
         document.getElementById("bdiv").innerHTML='ok';
         }else{
         document.getElementById("bdiv").innerHTML='Passwords don`t match';
         }
         }
}


</script>

 <style type="text/css">
  .divstyle{
  position:absolute;
  border:2px solid red;
  width:300px;
  top:10px;
  left:200px;
  }
  .bdivstyle{
  position:absolute;
  border:2px solid red;
  width:200px;
  top:120px;
  left:200px;
  }
  #divpass2{
    position:absolute;
  //border:2px solid red;
  width:180px;
  height:40px;
  top:100px;
  left:7px;
  }
  .divuser{
  position:absolute;
  border:2px solid red;
  width:200px;
  top:200px;
  left:200px;
  }

   </style>

</head>
<body>

  <form action='index.php' method='POST' name="pass">
        Type a pass:<br><input type="text" name="search_text" id="pass1" onkeyup="findmatch();" maxlength="20" autocomplete="off" autocorrect="off" autocapitalize="off" aria-required="true" >
         <br><br><br><br>
      
         <br><br><br><br>
        Username:<br><input type="text" name="username" id="user" onkeyup="finduser();"><br><br>
          <input type="submit" value="submit">
  </form>

    
  <div id='divpass2'>Retype password:<br><input type="text" name="compare" id="pass2" onkeyup="compare();"></div>
     


    <div class="divstyle" id="adiv">8-character minimum, atleast one simbol, atleast one number, atleast one lowercaseleater atleast one uppercaseleater </div>
    <div class="bdivstyle" id="bdiv"></div>
    <div class="divuser" id="username"></div>
</body>
</html>
