<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\product_category;

class product extends Model
{
    protected $table = "products";
    protected $guarded = [];

    public function categories()
    {
    	return $this->hasMany('App\product_category');
    }

    public function User()
    {
    	return $this->belongsTo('App\User', 'user_id', 'id');
    }

     public function Product_category()
    {
        return $this->hasMany('App\product_category', 'product_id', 'id');

    }




}
