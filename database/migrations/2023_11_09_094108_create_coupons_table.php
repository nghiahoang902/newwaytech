<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCouponsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique();
            $table->string('name')->nullable();
            $table->integer('max_uses')->nullable();

            //how many times a user can use this coupon
            $table->integer('max_uses_user')->nullable();

            $table->enum('type', ['percent', 'fixed'])->default('fixed');

            //the amount to discount based on type
            $table->double('discount_amount', 10, 2)->nullable();

            //min_amount to apply discount
            $table->double('min_amount', 10, 2)->nullable();
            
            $table->integer('status')->default(1);
            $table->dateTime('starts_at')->nullable();
            $table->dateTime('expires_at')->nullable();
            $table->integer('admin_created_id');
            $table->integer('admin_updated_id');
            $table->softDeletes();
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
        Schema::dropIfExists('coupons');
    }
}
