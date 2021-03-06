<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tiker extends Model
{
    protected $fillable=['subject','description','type_tiket','User_id'];

    public function typeTiket()
    {
        return $this->hasOne('App\type_tiker','id','type_tiket');
    }

    public function User()
    {
        return $this->hasOne('App\User','id','User_id');
    }
}
