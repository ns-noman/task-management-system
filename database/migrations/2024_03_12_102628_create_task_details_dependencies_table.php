<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('task_details_dependencies', function (Blueprint $table) {
            $table->id();
            $table->integer('task_id');
            $table->integer('task_details_id');
            $table->integer('task_type_id');
            $table->integer('task_type_detais_id');
            $table->integer('task_section_id');
            $table->integer('received_by')->nullable();
            $table->dateTime('received_at')->nullable();
            $table->dateTime('completed_at')->nullable();
            $table->tinyInteger('shown_status')->default(0);
            $table->tinyInteger('completion_status')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('task_details_dependencies');
    }
};
