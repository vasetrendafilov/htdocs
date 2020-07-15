<?php
use Slim\Slim;
use Slim\Views\Twig;
use Slim\Views\TwigExtension;

use Noodlehaus\Config;
use RandomLib\Factory as RandomLib;

use Drzava\User\User;
use Drzava\Helpers\Hash;
use Drzava\Validation\Validator;
use Drzava\Middleware\BeforeMiddleware;
use Drzava\Middleware\CsrfMiddleware;
use Drzava\Mail\Mailer;
use Mailgun\Mailgun;


session_cache_limiter(false);
session_start();
define('INC_ROOT', dirname(__DIR__));
require INC_ROOT . '/vendor/autoload.php';
$app = new Slim([
  'mode' => file_get_contents(INC_ROOT.'/mode.php'),
  'view' => new Twig(),
  'templates.path' => INC_ROOT.'/app/views'
]);
$app->add( new BeforeMiddleware);
$app->add( new CsrfMiddleware);

$app->configureMode($app->config('mode'), function() use ($app) {
  $mode2 = trim($app->mode);
   $app->config = Config::load(INC_ROOT . "/app/config/{$mode2}.php");
});
require 'database.php';
require 'filters.php';
require 'routes.php';

$app->auth=false;

  $app->container->set('user',function(){
    return new User;
  });
  $app->container->singleton('hash',function() use ($app){
    return new Hash($app->config);
  });
  $app->container->singleton('validation',function() use ($app){
    return new Validator($app->user);
  });
  $app->container->singleton('randomlib',function() use ($app){
    $factory = new RandomLib;
    return $factory->getMediumStrengthGenerator();
  });
  $app->container->singleton('mail',function() use ($app){
    $mailgun = new Mailgun($app->config->get('mail.secret'));
    return new Mailer($app->view, $app->config, $mailgun);
  });

$view = $app->view();

$view->parserOptions= [
  'debug' => $app->config->get('twid.debug')
];
$view->parserExtensions= [
  new TwigExtension
];
