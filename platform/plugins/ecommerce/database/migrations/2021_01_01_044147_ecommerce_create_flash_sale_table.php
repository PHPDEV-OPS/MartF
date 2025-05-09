<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('ec_flash_sales', function (Blueprint $table): void {
            $table->id();
            $table->string('name');
            $table->dateTime('end_date');
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('ec_flash_sale_products', function (Blueprint $table): void {
            $table->foreignId('flash_sale_id');
            $table->foreignId('product_id');
            $table->double('price')->unsigned()->nullable();
            $table->integer('quantity')->unsigned()->nullable();
            $table->integer('sold')->unsigned()->default(0);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('ec_flash_sale_products');
        Schema::dropIfExists('ec_flash_sales');
    }
};
