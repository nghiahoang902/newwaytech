<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use phpDocumentor\Reflection\Types\Nullable;

class AddColumnDiscountAmountToTbOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_orders', function (Blueprint $table) {
            $table->double('total', 10, 2)->nullable();
            $table->double('discount', 10, 2)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_orders', function (Blueprint $table) {
            $table->dropColumn('total');
            $table->dropColumn('discount');
        });
    }
}
