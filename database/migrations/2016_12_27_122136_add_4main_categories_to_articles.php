<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Add4mainCategoriesToArticles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
Schema::table('articles', function($table) {
        $table->boolean('car_cat');
        $table->boolean('truck_cat');
        $table->boolean('oil_cat');
        $table->boolean('tire_cat');
    });        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
	    {
			//
Schema::table('articles', function($table) {
	$table->dropColumn('car_cat');
        $table->dropColumn('truck_cat');
        $table->dropColumn('oil_cat');
        $table->dropColumn('tire_cat');

    }); 
    }
}
