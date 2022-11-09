<?php

namespace App\Http\Controllers;

use App\Http\Requests\TransaksiTransferRequest;
use App\Http\Resources\TransaksiResource;
use App\Models\RekeningAdmin;
use App\Models\TransaksiTransfer;
use App\Services\BaseService;
use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Log;

class TransaksiController extends Controller
{
    public function __construct(BaseService $baseService)
    {
        $this->baseService = $baseService;
    }
    public function transfer(TransaksiTransferRequest $request)
    {
        try {
        $kodeUnik = $this->baseService->getKodeUnik();
        $transaksi =  new TransaksiTransfer;
        $transaksi->id_transaksi = $this->baseService->getIdTransaksi();
        $transaksi->nilai_transfer = $request->nilai_transfer;
        $transaksi->bank_tujuan = $request->bank_tujuan;
        $transaksi->rekening_tujuan = $request->rekening_tujuan;
        $transaksi->atasnama_tujuan = $request->atasnama_tujuan;
        $transaksi->bank_pengirim = $request->bank_pengirim;
        $transaksi->biaya_admin = 0;
        $transaksi->kode_unik = $kodeUnik;
        $transaksi->total_transfer = $request->nilai_transfer + $kodeUnik;
        $transaksi->bank_perantara = $request->bank_pengirim;
        $transaksi->rekening_perantara = RekeningAdmin::where('bank', $request->bank_pengirim)->first()->rekening;
        $transaksi->berlaku_hingga = now()->addMinutes(15);
        $transaksi->save();
        } catch (QueryException $e) {
            return response(['status'=>'error'], 500);
        }
        return response(new TransaksiResource($transaksi), 200);
    }
}
