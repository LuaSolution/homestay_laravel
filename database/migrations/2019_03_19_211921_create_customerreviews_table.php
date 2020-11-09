<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomerreviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customerreviews', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();
            $table->string('name')->nullable();
            $table->string('position')->nullable();
            $table->string('company')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('electronic_page')->nullable();
            $table->string('address')->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nullable();

            $table->string('seo_title')->nullable();
            $table->string('seo_keywork')->nullable();
            $table->string('seo_description')->nullable();
            $table->string('seo_reviewurl')->nullable();
            $table->integer('status')->default(1);
            $table->integer('highlights')->default(0);
            $table->text('image')->nullable();
            $table->integer('order');
            $table->text('tags')->nullable();
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
        Schema::dropIfExists('customerreviews');
    }
}
