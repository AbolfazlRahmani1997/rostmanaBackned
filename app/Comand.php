<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comand extends Model

{
    protected $fillable=['id','fan_status','vap_status','fogg_status','light_status'];
    protected $hidden=['created_at','updated_at'];
}
