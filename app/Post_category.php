<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post_category extends Model
{
    protected $table = "post_categories";
    protected $guarded = [];


    public function Post()
    {
    	return $this->hasMany('App\Post');
    }

    public function Category()
    {
    	return $this->hasMany('App\Category');
    }

}