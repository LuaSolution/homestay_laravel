<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product_category extends Model
{
    protected $table = "product_category";
    protected $guarded = [];

    public function products()
    {
    	return $this->belongsToMany(product::class);
    }

    public function category_product()
    {
    	return $this->hasMany('App\category_product', 'categoryprouct_id', 'id');
    }


}

