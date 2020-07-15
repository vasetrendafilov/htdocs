<?php
namespace Drzava\User;
use Illuminate\Database\Eloquent\Model as Eloquent;
class User extends Eloquent
{
  protected $table='users';
  protected $fillable=[
    'email',
    'username',
    'password',
    'active',
    'active_hash',
    'recover_hash',
    'remember_identifier',
    'remember_token'
  ];
  public function getFullNameOrUsername(){
    if(!$this->first_name || !$this->last_name){
      return $this->username;
    }else{
    return "{$this->first_name} {$this->last_name}";
    }
  }
  public function activateAccount(){
    $this->update([
      'active'      => true,
      'active_hash' => null
    ]);
  }
  public function getAvatarUrl($options=[]){
    $size = isset($options['size']) ? $options['size'] : 45 ;
    return 'https://www.gravatar.com/avatar/'.md5(strtolower(trim($this->email))).'?s='.$size.'&d=identicon';
  }
  public function updateRememberCredentials($identifier, $token){
    $this->update([
      'remember_identifier' => $identifier,
      'remember_token'      => $token
    ]);
  }
  public function removeRememberCredentials(){
    $this->updateRememberCredentials(null,null);
  }
  public function permissions(){
    return $this->hasOne('Drzava\User\UserPermission', 'user_id');
  }
}
