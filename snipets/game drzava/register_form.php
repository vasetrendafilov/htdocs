                                                 <html>
<head>
    <?php
      require 'core.inc.php';
    
      if(!loggedin()){
        if(isset($_POST['username'])and isset($_POST['password'])and isset($_POST['password_aggain'])and isset($_POST['firstname'])and isset($_POST['surname'])){
          $username = $_POST['username'];
          $password = $_POST['password'];
          $password_aggain = $_POST['password_aggain'];
          $firstname = $_POST['firstname'];
          $surname = $_POST['surname'];
          $password_hash=md5($password);
            if(!empty($username)and !empty($password)and !empty($password_aggain)and !empty($firstname)and !empty($surname)){
               if(strlen($username)>20 || strlen($firstname)>30 || strlen($surname)>30){
                 echo 'Fuck you ';
               }else{
                        if($password == $password_aggain){
                            $query ="SELECT `username` FROM `db_users` WHERE `username`= '$username'";
                            $query_run=mysql_query($query);
                                  if(mysql_num_rows($query_run) == 0){
                                       $query=" INSERT INTO `db_users` VALUES ('','".mysql_real_escape_string($username)."','".mysql_real_escape_string($password_hash)."','".mysql_real_escape_string($firstname)."','".mysql_real_escape_string($surname)."')";
                                       if($query_run=mysql_query($query)){
                                        echo $year=$_POST['BirthYear'];
                                         //header('Location: homepage.php');
                                       }else{echo 'Sorry we couldn`t register you';}
                                  }else{echo 'The username'.$username.' already exists';}

                       }else{echo 'The passwords don`t match';}
                   }
              }else{echo 'Fill all the fileds!!';}

            }
    ?>
<!------------------------------------------------CSS-STYLE----------------------------------------------------!>
      <style type="text/css">
        .div_firstname{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:20px;
           left:40%;
          }
        .div_surname{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:20px;
           left:60%;
          }
        .div_username{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:70px;
           left:40%;
        }
        .div_email{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:70px;
           left:60%;
        }
        .div_pass{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:120px;
           left:40%;
        }
        .div_passaggain{
           border:2px solid red;
           position:absolute;
           width:200px;
           top:120px;
           left:60%;
        }
        .div_contry{
           border:2px solid red;
           position:absolute;
           width:300px;
           top:170px;
           left:40%;
        }
       .div_day{
           border:2px solid red;
           position:absolute;
           width:50px;
           top:200px;
           left:40%;
        }
       .div_month{
           border:2px solid red;
           position:absolute;
           width:100px;
           top:200px;
           left:45%;
        }
       .div_year{
           border:2px solid red;
           position:absolute;
           width:55px;
           top:200px;
           left:55%;
        }
       .div_sex{
           border:2px solid red;
           position:absolute;
           width:150px;
           top:240px;
           left:40%;
        }
       .div_button{
           border:2px solid red;
           position:absolute;
           width:100px;
           top:290px;
           left:50%;
        }
        #ajax_username{
           border:2px solid red;
           position:absolute;
           width:100px;
           top:20px;
           left:20px;
        }
      #ajax_pass{
           border:2px solid red;
           position:absolute;
           width:100px;
           top:100px;
           left:20px;
        }

      #ajax_pass2{
           border:2px solid red;
           position:absolute;
           width:100px;
           top:300px;
           left:20px;
      }
   </style>

<script type="text/javascript">
      function findmatch(){

          if(window.XMLHttpRequest) {
             xmlhttp = new XMLHttpRequest();
          } else {
            xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
          }
          xmlhttp.onreadystatechange = function() {
           if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
             document.getElementById('ajax_pass').innerHTML = xmlhttp.responseText;
           }
          }
          xmlhttp.open('GET', 'register_verification.php?search_text='+document.getElementById('pass').value , true);
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
             document.getElementById('ajax_username').innerHTML = xmlhttp.responseText;
           }
          }
          xmlhttp.open('GET', 'register_verification.php?username='+document.getElementById('username').value , true);
          xmlhttp.send();

      }
         function compare(){

         var pass1 = document.getElementById("pass").value;
         var pass2 = document.getElementById("pass2").value;
               if(pass1 != ''){
               if(pass1 == pass2){
               document.getElementById("ajax_pass2").innerHTML='ok';
               }else{
               document.getElementById("ajax_pass2").innerHTML='Passwords don`t match';
               }
               }
      }

</script>

</head>

<body>

<form action='register_form.php' method='POST'>
       <div id="div_firstname" class="div_firstname"> Firstname:<br><input type = 'text' id="s"name = 'firstname' maxlength = '30' ></div>
       <div id="div_surname" class="div_surname"> Lastname:<br><input type = 'text' name = 'surname' maxlength = '30' ></div>
       <div id="div_username" class="div_username"> Korisnicko ime:<br><input type = 'text' id="username"  maxlength = '20' onkeyup="finduser();"></div>
       <div id="div_email" class="div_email">E-mail adresa:<br><input type = 'text' name = 'email' maxlength = '30'></div>
       <div id="div_pass" class="div_pass"> Password:<br><input type = 'password' name = 'password' id="pass" onkeyup="findmatch();"></div>
       <div id="div_passaggain" class="div_passaggain">Retype Password:<br><input type = 'password' id="pass2" name = 'password_aggain' onkeyup="compare();"></div>
       <div id="div_contry" class="div_contry"><select name="Country">
           <option value="AF">Afghanistan</option><option value="AX">�land Islands</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AC">Ascension Island</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia</option><option value="BQ">Bonaire</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="BN">Brunei</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="CV">Cabo Verde</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos (Keeling) Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo</option><option value="CD">Congo (DRC)</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="HR">Croatia</option><option value="CU">Cuba</option><option value="CW">Cura�ao</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji Islands</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern and Antarctic Lands</option><option value="GA">Gabon</option><option value="GM">Gambia, The</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and McDonald Islands</option><option value="VA">Holy See (Vatican City)</option><option value="HN">Honduras</option><option value="HK">Hong Kong SAR</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN">India</option><option value="ID">Indonesia</option><option value="IR">Iran</option><option value="IQ">Iraq</option><option value="IE">Ireland</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="JM">Jamaica</option><option value="SJ">Jan Mayen</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KR">Korea</option><option value="XK">Kosovo</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Laos</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macao SAR</option><option value="MK">Macedonia, Former Yugoslav Republic of</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia</option><option value="MD">Moldova</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="AN">Netherlands Antilles (Former)</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NG">Nigeria</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="KP">North Korea</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PW">Palau</option><option value="PS">Palestinian Authority</option><option value="PA">Panama</option><option value="PG">Papua Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn Islands</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="CI">Republic of C�te d`Ivoire</option><option value="RE">Reunion</option><option value="RO">Romania</option><option value="RU">Russia</option><option value="RW">Rwanda</option><option value="XS">Saba</option><option value="SH">Saint Helena, Ascension and Tristan da Cunha</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="ST">S�o Tom� and Pr�ncipe</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="YU">Serbia, Montenegro</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="XE">Sint Eustatius</option><option value="SX">Sint Maarten</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="BL">St. Barth�lemy</option><option value="KN">St. Kitts and Nevis</option><option value="LC">St. Lucia</option><option value="MF">St. Martin</option><option value="PM">St. Pierre and Miquelon</option><option value="VC">St. Vincent and the Grenadines</option><option value="SD">Sudan</option><option value="SR">Suriname</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="SY">Syria</option><option value="TW">Taiwan</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TP">Timor-Leste (East Timor)</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TA">Tristan da Cunha</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option value="UK">United Kingdom</option><option value="US">United States</option><option value="UM">United States Minor Outlying Islands</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VE">Venezuela</option><option value="VN">Vietnam</option><option value="VG">Virgin Islands, British</option><option value="VI">Virgin Islands, U.S.</option><option value="WF">Wallis and Futuna</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option>
           </select></div>
       <div id="div_day" class="div_day"><select id="BirthDay" name="BirthDay">
           <option selected="selected" value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
           </select></div>
       <div id="div_month" class="div_month"><select id="BirthMonth" name="BirthMonth">
           <option selected="selected" value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option>
           </select></div>
       <div id="div_month" class="div_year"><select id="BirthYear" name="BirthYear">
           <option selected="selected" value="">Year</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option>
           </select></div>
       <div id="div_sex" class="div_sex">
           Male:<input type = 'radio' name = 'sex' value = 'm'>
           Female:<input type = 'radio' name = 'sex' value = 'z'><br><br></div>
       <div id="div_button" class="div_button"><input type = 'submit' value='Register'></div>
</form>
      <div id="ajax_username"></div>
      <div id="ajax_pass">8-character minimum, atleast one simbol, atleast one number, atleast one lowercaseleater atleast one uppercaseleater </div>
      <div id="ajax_pass2"></div>
    <?php

      }else if (loggedin()){
        echo'You`re already registraded and logged in';
        header('Location: homepage.php');
      }
    ?>

</body>
</html>
