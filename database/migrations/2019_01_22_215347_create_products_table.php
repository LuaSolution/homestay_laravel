<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->nullable();
            $table->text('desciption')->nullable();
            $table->text('content')->nullable();
            $table->text('image')->nullable();
            $table->text('images')->nullable();
            $table->text('tags')->nullable();
            $table->integer('amount')->nullable();
            $table->text('pricemarket')->nullable();
            $table->text('price')->nullable();
            $table->integer('status')->default(0);
            $table->integer('highlights')->default(0);
            $table->integer('user_id')->unsigned();
            $table->integer('supplier_id')->unsigned();
            $table->integer('unit_id')->unsigned();
            $table->integer('deleted_at')->default(0);
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('supplier_id')->references('id')->on('suppliers');
            $table->foreign('unit_id')->references('id')->on('units');
            // seo
            $table->text('seo_title')->nullable();
            $table->text('seo_description')->nullable();
            $table->text('seo_image')->nullable();
            $table->text('seo_tags')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
