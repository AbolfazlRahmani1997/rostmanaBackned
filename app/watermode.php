<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class watermode extends Model
{
    protected $hidden=['builder_id','updated_at','id','created_at','updated_at','id'];
    protected $fillable=['name'];
}
