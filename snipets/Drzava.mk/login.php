<html>
<head>
<?php
  require_once 'core/init.php';

  if(Input::exists()){
      if(Token::check(Input::get('token'))){

          $validation = new Validation();
          $validation->check($_POST, array(
              'username'  => array('required' => 'true'),
              'password'  => array('required' => 'true')
          ));

          if($validation->passed()){
              $user = new User();

              $remember = (Input::get('remember') === 'on')? true : false;
              $login = $user->login(Input::get('username'), Input::get('password'), $remember);

              if($login){
                  Redirect::to('index.php');
              }else{
                  echo '<p>Sorry, Logged in failed</p>';
              }
          }else{
              pre($validation->errors());
          }

      }
  }
?>
<style>
#meni{
  border: 2px solid red;
  border-radius: 10px;
  position: absolute;
  top: 200px;
  left: 45%;
  padding: 10px;
  height: 200px;
}
#div_register{
  position: absolute;
  top:380px;
  left:48%;

}
label{
font-size: 20px;
}
#username{
  width: 200px;
  height: 25px;
  font-size: 15px;
}
#password{
  width: 200px;
  height: 25px;
  font-size: 25px;
}
#div_remember{
position: absolute;
left: 30px;
}
#login{
position: absolute;
top: 135px;
left: 55px;
width: 100px;
height: 30px;
font-size: 20px;
}
button{
  width: 130px;
  height: 35px;
  font-size: 20px;
}
</style>
</head>
<body>
  <form action="" method="post">
    <div id="meni">
      <div class="field">
          <label for="username">Username:</label><br>
          <input type="text" name="username" id="username" autocomplete=""/>
      </div>

      <div class="field">
          <label for="password">Password:</label><br>
          <input type="password" name="password" id="password" autocomplete=""/>
      </div>

      <div class="field">
          <label id="div_remember" for="remember">
              <input type="checkbox" name="remember" id="remember"/> Remember me
          </label>
      </div>
      <input id="login" type="submit" value="Login"/>
    </div>
      <input type="hidden" name="token" value="<?php echo Token::generate();?>"/>
  </form>
  <div id="div_register">
    <a href="http://localhost/vase/Drzava.mk/register.php">
    <button>Registracija</button>
    </a>
  </div>
</body>
</html>
