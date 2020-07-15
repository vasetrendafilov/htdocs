<?php
namespace Drzava\Validation;

use Violin\Violin;
use Drzava\User\User;
class Validator extends Violin
{
  protected $user;

  public function __construct(User $user){
    $this->user=$user;
    $this->addFieldMessages([
      'email' =>[
        'uniqueEmail' => 'That email i already taken'
      ],
      'username' =>[
        'uniqueUsername' => 'That username i already taken'
      ]
    ]);
  }
  public function validate_uniqueEmail($value, $input , $args)
  {
    $user = $this->user->where('email',$value);
    return ! (bool) $user->count();
  }
  public function validate_uniqueUsername($value, $input , $args)
  {
    $user = $this->user->where('username',$value);
    return ! (bool) $user->count();
  }

}
