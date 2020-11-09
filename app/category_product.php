<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category_product extends Model
{
    protected $table = "category_products";
    protected $guarded = [];

   

   public function getCategoryProduct()
   {
   		$categoryproduct = category_product::all()->toArray();
   		return $categoryproduct;
   }
}
