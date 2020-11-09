<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShoppingcartTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer', function (Blueprint $table) {
            $table->increments('id');
            $table->string('fullname')->nullable();
            $table->string('phone')->nullable();
            $table->string('address')->nullable();
            $table->text('email')->nullable();
            $table->text('info')->nullable();
            $table->timestamps();
        });


        Schema::create('bill', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('customer_id')->unsigned();
            $table->text('total_money')->nullable();
            $table->integer('status')->default(1);
            $table->integer('user_id')->default(0);
            $table->foreign('customer_id')->references('id')->on('customer')->onDelete('cascade');
            $table->timestamps();
        });


            Schema::create('bill_detail', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('bill_id')->unsigned();
            $table->string('name')->nullable();
            $table->integer('qty')->nullable();
            $table->text('price')->nullable();
            $table->text('image')->nullable();
            $table->foreign('bill_id')->references('id')->on('bill')->onDelete('cascade');
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
        Schema::dropIfExists('customer');
         Schema::dropIfExists('bill');
          Schema::dropIfExists('bill_detail');
    }
}
