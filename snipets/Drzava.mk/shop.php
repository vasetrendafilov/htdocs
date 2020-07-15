<html>
<head>
<style>
   #back{
     position: absolute;
     top: 90%;
     left: 90%;

   }
   #div_energija{
     border:2px solid red;
     border-radius: 20px;
     position:absolute;
     padding-left: 40px;
     width:200px;
     height: 200px;
     top:20px;
     left:5%;
   }
   #div_levelup{
     border:2px solid red;
     border-radius: 20px;
     position:absolute;
     padding-left: 40px;
     width:200px;
     height: 200px;
     top:20px;
     left:25%;
   }
   #div_money{
     border:2px solid red;
     border-radius: 20px;
     position:absolute;
     padding-left: 40px;
     width:200px;
     height: 200px;
     top:20px;
     left:45%;
   }
   #div_mok{
     border:2px solid red;
     border-radius: 20px;
     position:absolute;
     padding-left: 40px;
     width:200px;
     height: 200px;
     top:20px;
     left:65%;
   }
   #div_gold{
     border:2px solid red;
     border-radius: 20px;
     position:absolute;
     padding-left: 40px;
     width:200px;
     height: 200px;
     top:250px;
     left:5%;

   }
  #submit{
    width:150px;
  }
</style>
<?php
 require_once 'core/init.php';
      $user=new User();
      if($user->isLoggedIn()){
        $data=$user->data();
        if($user->find_prom($data->sifra)){
        $data_prom=$user->data_prom();
        }
        if(isset($_GET['item']) && !empty($_GET['item'])){
            $item=$_GET['item'];
            switch ($item){
              case 'energy':
              if($data_prom->energija!=100){
              ?>
              <style media="screen">
              .visiual{
                visibility: hidden;
              }
              #div_energija{
                font-size: 20px;
                border:2px solid green;
                border-radius: 20px;
                position:absolute;
                padding-top: 50px;
                padding-left: 50px;
                width:200px;
                height: 200px;
                top:200px;
                left:45%;
                visibility: visible;
              }
              </style>
              <?php
               }else{
              Session::flash('success', 'Energy is full');
              Redirect::to('index.php');
               }
              break;
              case 'level':
              ?>
              <style media="screen">
              .visiual{
                visibility: hidden;
              }
              #div_levelup{
                font-size: 20px;
                border:2px solid green;
                border-radius: 20px;
                position:absolute;
                padding-top: 50px;
                padding-left: 50px;
                width:200px;
                height: 200px;
                top:200px;
                left:45%;
                visibility: visible;
              }
              </style>
              <?php
                break;
              case 'pari':
              ?>
              <style media="screen">
              .visiual{
                visibility: hidden;
              }
              #div_money{
                font-size: 20px;
                border:2px solid green;
                border-radius: 20px;
                position:absolute;
                padding-top: 50px;
                padding-left: 50px;
                width:200px;
                height: 200px;
                top:200px;
                left:45%;
                visibility: visible;
              }
              </style>
              <?php
                break;
              case 'mok':
              ?>
              <style media="screen">
              .visiual{
                visibility: hidden;
              }
              #div_mok{
                font-size: 20px;
                border:2px solid green;
                border-radius: 20px;
                position:absolute;
                padding-top: 50px;
                padding-left: 50px;
                width:200px;
                height: 200px;
                top:200px;
                left:45%;
                visibility: visible;
              }
              </style>
              <?php
                break;
              case 'gold':
              ?>
              <style media="screen">
              .visiual{
                visibility: hidden;
              }
              #div_gold{
                font-size: 20px;
                border:2px solid green;
                border-radius: 20px;
                position:absolute;
                padding-top: 50px;
                padding-left: 50px;
                width:200px;
                height: 200px;
                top:200px;
                left:45%;
                visibility: visible;
              }
              </style>
              <?php
                break;

              default:
                Redirect::to('index.php');
                break;
            }
           }
          if($data_prom->energija==100){
          ?>
           <style>
             #div_energija{
               visibility: hidden;
             }
           </style>
          <?php
          }
          if(Input::exists()){
          if(Token::check(Input::get('token'))){
          $validation = new Validation();
          $validation->check($_POST, array(
              'energija'  => array('required' => 'true')
          ));
          if($validation->passed()){

            $energija=Input::get('energija');
            $enable=Input::get('energija_button');
            if (isset($enable) && !empty($enable)) {

                  if($energija>100){
                    Redirect::to(404);
                  }
                  if($data_prom->gold>=($energija/2)){
                    $gold=($data_prom->gold)-($energija/2);
                     try{
                         $user->update_prom($data->sifra,array(
                             'energija'  => $energija,
                             'gold'      =>$gold
                         ));
                     }catch (Exception $e){
                         die($e->getMessage());
                     }
                     Session::flash('success', 'Information Updated Successfully');
                     Redirect::to('index.php');
                  }else {
                    echo 'Nemas dovolno gold';
                  }
            }

            $levelup=Input::get('levelup');
            if (isset($levelup) && !empty($levelup)){
              $curent_exp=$data_prom->level;
              $exp_to_grind=display_level($data_prom->level,false)-$curent_exp+1;
              $gold_taken= $exp_to_grind*0.05;//1exp kolku kosta gold
              if($data_prom->gold>=$gold_taken){
                $gold = ($data_prom->gold) - $gold_taken;
                 try{
                     $user->update_prom($data->sifra,array(
                         'level'     =>$curent_exp+$exp_to_grind,
                         'gold'      =>$gold
                     ));
                 }catch (Exception $e){
                     die($e->getMessage());
                 }
                 Session::flash('success', 'Information Updated Successfully');
                 Redirect::to('index.php');
              }else {
                echo 'Nemas dovolno gold';
              }
            }

          }else{
              pre($validation->errors());
          }
        }
      }
  }else{
    Redirect::to('index.php');
  }
?>
<script>
  function slider_change(value){
    document.getElementById('energija').innerHTML=value;
    document.getElementById('submit').value='Gold:'+(value/2);//to int funkcija
  }
</script>
</head>
<body>
<form action="" method="post">
  <div id="div_energija" class="visiual">
    <label for="energija">Nadopolni energija:</label><br>
    <input name="energija" type="range" min="<?php echo curent_energy();?>" max="100" value="<?php echo curent_energy();?>" step="5" onchange="slider_change(this.value);">
   <br>Energija =<span id="energija"></span>
    <input id="submit" type="submit" name="energija_button" value="Gold:0" >
  </div>
  <div id="div_levelup" class="visiual" >
    <label>Level Up:></label><br>
    <input name="levelup"id="submit" type="submit" value="Gold:<?php echo ((display_level($data_prom->level,false))-$data_prom->level)*0.05;//1 exp vo gold ?>">
  </div>
  <div id="div_money" class="visiual">
    <label>Pari:</label><br>
    <input id="submit" type="submit" value="go">
  </div>
  <div id="div_mok" class="visiual">
    <label>Mok:</label><br>

    <input id="submit" type="submit" value="go">
  </div>
  <div id="div_gold" class="visiual">
    <label>Gold:</label><br>

    <input id="submit" type="submit" value="go">
  </div>
    <input type="hidden" name="token" value="<?php echo Token::generate();?>"/>
</form>
<div id="back">
  <a href="http://localhost/vase/Drzava.mk/index.php">
  <button>Back</button>
  </a>
</div>
</body>
</html>
