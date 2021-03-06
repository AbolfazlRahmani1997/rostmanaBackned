<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cache extends Model
{
    protected $fillable=['key','value','expiration'];
}
