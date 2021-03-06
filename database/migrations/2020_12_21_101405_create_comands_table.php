<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comands', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('builder_id');
            $table->boolean('fan_status')->default(0);
            $table->boolean('vap_status')->default(0);
            $table->boolean('fogg_status')->default(0);
            $table->boolean('light_status')->default(0);
            $table->timestamps();
        });
        Schema::table('comands',function ($table){
            $table->foreign('builder_id')->on('builders')->references('id');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comands');
    }
}
