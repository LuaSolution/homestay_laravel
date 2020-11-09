<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotels', function (Blueprint $table) {
            $table->increments('id');
            $table->text('name')->nullable();
            $table->text('address')->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nulllable();
            $table->text('phone')->nullable();
            $table->text('email')->nullable();
            $table->text('avatar')->nullable();
            $table->text('images')->nullable();
            $table->text('price')->nullable();
            $table->text('qtycustomeytoida')->nullable();
            $table->text('qtycustomeytoithieu')->nullable();
            $table->integer('qtyOrder')->default(0)->nullable();
            $table->text('nearby')->nullable();
            $table->text('popular')->nullable();
            $table->integer('user_id')->default(1)->nullable();
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
        Schema::dropIfExists('hotels');
    }
}
