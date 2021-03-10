<?php

namespace App;

use  Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use app\Plant;

class User extends Authenticatable
{
    use Notifiable;
    use HasApiTokens;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'firstname', 'phonenumber', 'email', 'password','id',
    ];
//protected $hidden=['Builder'];

    public function Profile(){
        return $this->hasOne('App\Profile','user_id');
    }

    public function Builder(){
        return $this->hasMany('App\builder','user_id','id');
    }


    public function admin()
    {
   return $this->is_admin;

    }

    public function Plants()
    {
        return $this->belongsToMany('App\Plant','users_plants','user_id','plant_id');
    }

    public function Tiket()
    {
        return $this->hasMany('App\tiker','User_id','id');
    }
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token','builder','plant_id'
        ,'created_at','updated_at'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
