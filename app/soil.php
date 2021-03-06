<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class soil extends Model
{
    protected $fillable=['id','name'];
    protected $hidden=['builder_id','updated_at','id','created_at','updated_at'];
protected $table='categorysoils';


}

