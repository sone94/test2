<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = "brands";
    protected $guarded = [];
    public function cars()
    {
        return $this->hasMany('App\Car', 'brand_id', 'id');
    }
}
