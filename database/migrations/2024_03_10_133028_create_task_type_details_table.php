<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('task_type_details', function (Blueprint $table) {
            $table->id();
            $table->integer('task_type_id');
            $table->integer('section_id');
            $table->string('next_section_ids', 100);
            $table->string('dependency_section_ids', 100);
            $table->integer('section_value');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('task_type_details');
    }
};
