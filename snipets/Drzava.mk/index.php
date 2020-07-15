<html>
<head>
  <?php
    require_once 'core/init.php';
    if(Session::exists('success')){
        echo Session::flash('success');
    }
    $user = new User();
    if($user->isLoggedIn()){
    $data = $user->data();
    if($user->find_prom($data->sifra)){
    $data_prom=$user->data_prom();
    }//zimanje na site potrebni promenlivi
    //ispecatuvanje na leven vo bar
    $conf=(display_level($data_prom->level,false))-(display_level($data_prom->level,true)*1000);
    $curent_exp=($data_prom->level)-$conf;
    $granica=display_level($data_prom->level,false)-$conf;
    $final=($curent_exp/$granica)*100;//level_exp transformiran vo vo procenti
     }else{
      Redirect::to('login.php');
     }?>

<style>
  button{
    border-radius: 5px;
  }
  label{
  font-size: 18px;
  }
  #pomosh{
    background-color: aqua;
    opacity: 0.5;
    position: absolute;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    visibility: hidden;
  }
  #back{
    opacity: 1;
    position: absolute;
    top: 10px;
    left: 50px;
  }
  #div_pomosh{
    position: absolute;
    top: 10px;
    left: 10px;
  }
#energy_box{
  position: absolute;
  padding-left: 8px;
  top: 10;
  left: 60%;
  width: 250px;
  height: 45px;
  border: 2px solid red;
  border-radius:10px;
  }
 #energy_bar{
   position: absolute;
   width: 200px;
   height: 15px;
   border: 2px solid red;
   border-radius:10px;
 }
 #progres_bar{
  position: absolute;
  width: 0px;
  height: 15px;
  background-color: blue;
  border-radius:10px;
 }
 #add_energy{
   position: absolute;
   left: 220px;
   top: 18px;
 }

  #level_box{
 position: absolute;
 padding-left: 8px;
 top: 10;
 left: 80%;
 width: 250px;
 height: 45px;
 border: 2px solid red;
 border-radius:10px;
  }
  #level_bar{
  position: absolute;
  width: 200px;
  height: 15px;
  border: 2px solid red;
  border-radius:10px;
 }
  #level_progres_bar{
  position: absolute;
  width:<?php echo $final.'%';?>;
  height: 15px;
  background-color: green;
  border-radius:10px;
  }
  #pari{
    position: absolute;
    top: 10;
    left: 54%;
    width: 60px;
    height: 40px;
    padding: 3px;
    padding-left: 8px;
    border: 2px solid red;
    border-radius:10px;
  }
  #gold{
    position: absolute;
    top: 10;
    left: 48%;
    width: 60px;
    height: 40px;
    padding: 3px;
    padding-left: 8px;
    border: 2px solid red;
    border-radius:10px;
  }
  #mok{
    position: absolute;
    top: 10;
    left: 42%;
    width: 60px;
    height: 40px;
    padding: 3px;
    padding-left: 8px;
    border: 2px solid red;
    border-radius:10px;
  }
 #shop_shortcut{
   position: absolute;
   top: 22px;
   left: 45px;

}
 #meni{
  position: absolute;
  top: 70px;
  left: 20px;
  width: 1331px;
  height: 550px;
  border: 2px solid red;
  border-radius: 10px;
  }
  #div_odjava{
    position: absolute;
    top: 500px;
    left: 1200px;
  }
  #div_shop{
    position: absolute;
    top: 300px;
    left: 700px;
  }
  #div_banka{
    position: absolute;
    top: 200px;
    left: 200px;
  }
  #div_rabota{
    position: absolute;
    top: 400px;
    left: 500px;
  }
  #div_informacisko_biro{
    position: absolute;
    top:  40%;
    left: 60%;
  }
  #informacii{
    position: absolute;
    top:  35%;
    left: 72%;
    border: 2px solid aqua;
    border-radius: 10px;
    padding: 5px;
    visibility: collapse;
  }
  #div_obrazovanie{
    position: absolute;
    top: 400px;
    left: 600px;
}


</style>

<script>
  function doFirst() {
      bar_energija=document.getElementById("progres_bar");
      getEnergy();
      update_bar=setInterval(getEnergy,10000);
  }
  function getEnergy() {
    if(window.XMLHttpRequest) {
       xmlhttp = new XMLHttpRequest();
    } else {
      xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
    }
    xmlhttp.onreadystatechange = function() {
     if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
         bar_energija.style.width = xmlhttp.responseText+'%';
     }
    }
    xmlhttp.open('GET', 'energy_update.php?enable=1' , true);
    xmlhttp.send();
  }
  window.addEventListener('load',doFirst,false);

</script>
</head>
<body>
<div id="pomosh"> <button id="back" onclick="document.getElementById('pomosh').style.visibility='hidden';"> Back </button></div>
    <div id="div_pomos"> <button onclick="document.getElementById('pomosh').style.visibility='visible';">?</button> </div>
    <div id="energy_box"> <label> Energija:</label> <div id="energy_bar" > <div id="progres_bar"></div> </div> <div id="add_energy"><a href="http://localhost/vase/Drzava.mk/shop.php?item=energy"><button>+</button></a></div> </div>
    <div id="level_box"> <label> Level:<?php echo display_level($data_prom->level,true);?></label> <div id="level_bar"> <div id="level_progres_bar"></div> </div> <div id="add_energy"><a href="http://localhost/vase/Drzava.mk/shop.php?item=level"><button>+</button></a></div> </div>
    <div id="pari"><label for="pari">Pari:</label><br><?php echo $data_prom->pari;?> <div id="shop_shortcut"><a href="http://localhost/vase/Drzava.mk/shop.php?item=pari"><button>+</button></a></div> </div>
    <div id="mok"><label for="mok">Mok:</label><br><?php echo $data_prom->mok;?> <div id="shop_shortcut"><a href="http://localhost/vase/Drzava.mk/shop.php?item=mok"><button>+</button></a></div> </div>
    <div id="gold"><label for="gold">Zlato:</label><br><?php echo $data_prom->gold;?> <div id="shop_shortcut"><a href="http://localhost/vase/Drzava.mk/shop.php?item=gold"><button>+</button></a></div> </div>
<div id="meni">
    <div id="div_odjava">
      <a href="http://localhost/vase/Drzava.mk/logout.php">
      <button>Одјава</button>
      </a>
    </div>
    <div id="div_shop">
      <a href="http://localhost/vase/Drzava.mk/shop.php">
      <button>Shop</button>
      </a>
    </div>
    <div id="div_banka">
    <a href="http://localhost/vase/Drzava.mk/banka.php">
      <img src="includes/Untitled.png">
    </a>
    </div>
    <div id="div_sobranie">
      <a href="http://localhost/vase/Drzava.mk/sobranie.php">
      <button>Sobranie</button>
      </a>
    </div>
    <div id="div_rabota">
      <a href="http://localhost/vase/Drzava.mk/rabota.php">
      <button>Rabota</button>
      </a>
    </div>
    <div id="div_vlada">
      <a href="http://localhost/vase/Drzava.mk/vlada.php">
      <button>Vlada</button>
      </a>
    </div>
    <div id="div_shtab">
      <a href="http://localhost/vase/Drzava.mk/meni/shtab.php">
      <button>Stab</button>
      </a>
    </div>
    <div id="div_obrazovanie">
      <a href="http://localhost/vase/Drzava.mk/obrazovanie.php">
      <button>Obrazovanie</button>
      </a>
    </div>
    <div id="div_informacisko_biro" onmouseover="document.getElementById('informacii').style.visibility='visible';" onmouseout="document.getElementById('informacii').style.visibility='collapse';">
      <img src="includes/фд.png">
    </div>
    <div id="informacii">
    <label>Sifra na igracot: <?php echo $data->sifra;?></label><br>
    <label>Ime i Prezime: <?php echo $data->name;?></label><br>
    <label>Korisnocko ime: <?php echo $data->username;?></label><br>
    <label>Godina na raganje: <?php echo $data->rodenden;?></label><br>
    <label>Nacionalnost: <?php echo decode_n($data->nacionalnost,$data->sex);?></label><br>
    <label>Grad: <?php echo decode_g($data->grad);?></label><br>
    </div>
    <div id="div_glasachko_Mesto">
      <a href="http://localhost/vase/Drzava.mk/glasachko_Mesto.php">
      <button>Glasachko_Mesto</button>
      </a>
    </div>

</div>
</body>
</html>
