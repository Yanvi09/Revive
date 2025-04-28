<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
  // database/migrations/xxxx_xx_xx_create_beds_table.php
public function up()
{
    Schema::create('beds', function (Blueprint $table) {
        $table->id();
        $table->string('bed_number');
        $table->string('room_number');
        $table->enum('status', ['available', 'occupied'])->default('available');
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('beds');
    }
};
