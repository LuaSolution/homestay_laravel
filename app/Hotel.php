<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $table = "hotels";

    public function Hotel_utilities()
    {
        return $this->hasMany('App\Hotel_utilitie', 'hotel_id', 'id');
    }
}
