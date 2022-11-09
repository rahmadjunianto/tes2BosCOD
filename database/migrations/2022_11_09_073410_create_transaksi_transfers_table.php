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
        Schema::create('transaksi_transfers', function (Blueprint $table) {
            $table->id();
            $table->string('id_transaksi', 13);
            $table->decimal('nilai_transfer');
            $table->decimal('kode_unik');
            $table->decimal('biaya_admin');
            $table->decimal('total_transfer');
            $table->string('bank_perantara');
            $table->string('rekening_perantara');
            $table->dateTime('berlaku_hingga',);
            $table->string('bank_tujuan');
            $table->string('rekening_tujuan');
            $table->string('atasnama_tujuan');
            $table->string('bank_pengirim');
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
        Schema::dropIfExists('transaksi_transfers');
    }
};
