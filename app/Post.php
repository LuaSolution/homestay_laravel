<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Category;
use App\Post_category;
use App\User;

class Post extends Model
{
    protected $table = "posts";
    protected $guarded = [];


    public function User()
    {
    	return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function Category()
    {
        return $this->belongsToMany(Category::class);
    }


    public function Post_category()
    {
    	return $this->hasMany('App\Post_category', 'posts_id', 'id');

    }


}
