<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class builder extends Model
{
    protected  $path="/builder/";
    protected $fillable = ['id','name','model','length','width','picture','plant_id','gender_id','automode_id','watermode_id','icon'];

    protected $hidden=['plant_id','gender_id','automode_id','watermode_id','created_at','updated_at'];

    public function getIconAttribute($value)
    {
        if($value!=''){
            return $this->path.$value;
        }
        return $value;
    }

    public function User()
    {
        return $this->hasOne('App\User','id','user_id');
    }

    public function gender()
    {
        return $this->hasOne('App\gender', 'id', 'gender_id');
    }

    public function watermode()
    {
        return $this->hasOne('App\watermode', 'id', 'watermode_id');
    }

    public function automode()
    {
        return $this->hasOne('App\automode', 'id', 'automode_id');
    }
    public function Plant(){
        return $this->belongsToMany('App\Plant','builder_plant','builder_id','plant_id');
    }
    public function Log(){
        return $this->hasMany('App\log','builder_id','id');
    }
    public function Comand(){
        return $this->hasOne('App\Comand','builder_id','id');
    }
}
