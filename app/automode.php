<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class automode extends Model
{
    protected $fillable=['id','name'];
    protected $hidden=['created_at','updated_at'];

}
