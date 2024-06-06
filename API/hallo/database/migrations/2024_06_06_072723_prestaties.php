<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('prestaties', function (Blueprint $table) {
            $table->id('id');
            $table->date('datum',);
            $table->time('starttijd',);
            $table->time('eindtijd',);
            $table->foreignId('gebruikerid')->constrained('gebruikers')->onDelete('cascade');
            $table->foreignId('oefeningenid')->constrained('oefeningen')->onDelete('cascade');
            $table->unsignedInteger('aantal',);

            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prestaties');
    }
};
