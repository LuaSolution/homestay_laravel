<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bill extends Model
{
    protected $table = "bill";

     public function bill_customer()
    {
    	return $this->belongsTo("App\customer", 'customer_id', 'id');
    }


    public function bill_detail()
    {
    	return $this->hasMany("App\bill_detail");
    }

}
