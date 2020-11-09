<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class page extends Model
{
    protected $table = "pages";
    protected $guarded = [];


    public function User()
    {
    	return $this->belongsTo('App\User', 'user_id', 'id');
    }

}
