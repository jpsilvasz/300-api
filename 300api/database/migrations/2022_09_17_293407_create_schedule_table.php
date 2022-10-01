<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('schedules', function (Blueprint $table) {
            $table->id();
            $table->timestamp('dma');//Dia-Mes-Ano
            $table->foreignId('service_id')->constrained()->cascadeOnDelete();
            $table->foreignId('user_id')->constrained()->cascadeOnDelete();
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
        Schema::dropIfExists('schedules');
        Schema::table('schedules', function (Blueprint $table) {
            $table->foreingId('user_id')->constrained()->onDelete('cascade');
        });
        Schema::table('schedules', function (Blueprint $table) {
            $table->foreingId('service_id')->constrained()->onDelete('cascade');
        });
    }
};
