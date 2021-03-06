<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plants', function (Blueprint $table) {
            $table->id();
            $table->string('name','25');
            $table->string('photo');
            $table->unsignedBigInteger('planttype');
            $table->unsignedFloat('temp');
            $table->unsignedFloat('light');
            $table->unsignedFloat('humidity_soil');
            $table->unsignedFloat('humidity_air');
            $table->unsignedBigInteger('soil_id');
            $table->unsignedBigInteger('fertilizer_id');
//            $table->foreign('tfertilizer_id')->on('categoryfertilizers')->references('id');
            $table->timestamps();
        });
        Schema::table('plants',function ($table){
            $table->foreign('fertilizer_id')->on('categoryfertilizers')->references('id');
            $table->foreign('planttype')->references('id')->on('category_plants');
            $table->foreign('soil_id')->references('id')->on('categorysoils');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plants');
    }
}
