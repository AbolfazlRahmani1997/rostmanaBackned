<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    protected $hidden=['builder_id','updated_at','id','created_at','updated_at'];
    protected $fillable=['avatar','firstname','lastname','Birth','sex','address'];
    protected  $path="/avatar/";
    public function User()
    {
        return $this->belongsTo('App\User');
    }

    public function getAvatarAttribute($value)
    {
        if($value!=''){
            return $this->path.$value;
        }
        return $value;
    }
}
