<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryPlant extends Model
{
   protected $fillable=['TypePlants','id'];
    protected $hidden=['created_at','updated_at'];
   public function Plant(){
       return $this->hasMany('App\Plant','planttype','id');
   }
}
