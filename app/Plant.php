<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plant extends Model
{
    protected $fillable=['id','planttype','P_Water_S','P_WaterـW','time_fertilizer','prune','','name','temp','photo','light','humidity_soil','humidity_air','soil_id','fertilizer_id','temp_to','humidity_air_to'];
    protected $hidden=['builder_id','updated_at','created_at','updated_at'];
    protected  $path="/Plant/";
    public function getPhotoAttribute($value)
    {
        if($value!=''){
            return $this->path.$value;
        }
        return $value;
    }
    public function CategoryPlant(){
        return $this->hasOne('App\CategoryPlant','id','planttype');
    }
    public function fertilizer(){
        return $this->hasOne('App\Categoryfertilizer','id','fertilizer_id');
    }
    public function soil(){
        return $this->hasOne('App\Categorysoil','id','soil_id');
    }

    public function User()
    {
return $this->belongsToMany('App\User','users_plants','plant_id','user_id');
    }

    public function Builder()
    {
        return $this->belongsToMany('App\Plant','builders_plants','builder_id','plant_id');
    }
}
