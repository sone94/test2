<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $table = 'cars';

    public function brand()
    {
        return $this->belongsTo('App\Brand', 'brand_id', 'id');
    }

}
