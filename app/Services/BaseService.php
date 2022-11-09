<?php

namespace App\Services;

use App\Models\TransaksiTransfer;

class BaseService
{
    public function getIdTransaksi()
    {
        $maxIdTransaksi = TransaksiTransfer::max("id_transaksi");
        $NoUrut = substr($maxIdTransaksi, 8, 5);
        $NoUrut++;
        $newId = "F".date("ymd"). sprintf('%05s', $NoUrut);
        return $newId;
    }
    public function getKodeUnik()
    {
        return rand(pow(10, 3-1), pow(10, 3)-1);
    }
}
