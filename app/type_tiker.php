<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class type_tiker extends Model
{
    protected $fillable=['id','name'];
    protected $table='type_tiket';
    public function tiker()
    {
    return $this->hasMany('app\tiker','type_tiket','id');
    }

}
