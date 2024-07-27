<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('task_details', function (Blueprint $table) {
            $table->id();
            $table->integer('task_id');
            $table->integer('task_type_id');
            $table->integer('task_type_detais_id');
            $table->integer('task_section_id');
            $table->integer('task_section_value');
            $table->tinyInteger('status')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('task_details');
    }
};
