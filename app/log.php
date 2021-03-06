<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class log extends Model
{
    public function getCreatedAtAttribute($value)
    {

        if($value!=''){

            return $this->$value.jdate($value);
        }
        return $value;
    }

    protected $hidden=['builder_id','updated_at','name'];

}
