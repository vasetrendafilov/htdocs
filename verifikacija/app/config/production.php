<?php
return[
   'app' => [
        'url'  =>'http://localhost/old%20projects/verifikacija',
        'hash' =>[
              'algo' => PASSWORD_BCRYPT,
              'cost' => 10
        ]
   ],
   'db' => [
        'driver'   => 'mysql',
        'host'     => '127.0.0.1',
        'name'     => 'site',
        'username' => 'root',
        'password' => '',
        'charset'  =>'utf8',
        'collation'=> 'utf8_unicode_ci',
        'prefix'   =>''
   ],
   'auth' => [
        'session'  => 'user_id',
        'remember' => 'user_r'
   ],
   'mail' => [
     'secret'      => 'key-08e345f64c7891b68f58214b75ac3f00',
     'domain'      =>'https://api.mailgun.net/v3/sandbox641e8e04b69d44deba4434486934e961.mailgun.org',
     'from'        => 'drzava.mk.gmail.com',
   ],
   'twig' => [
        'debug' => true
   ],
   'csrf' => [
        'key' =>'csrf_token',
   ]
];
