<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TransaksiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id_transaksi' => $this->id_transaksi,
            'nilai_transfer' => (int) $this->nilai_transfer,
            'kode_unik' => (int) $this->kode_unik,
            'biaya_admin' => (int)$this->biaya_admin,
            'total_transfer' => (int) $this->total_transfer,
            'bank_perantara' => $this->bank_perantara,
            'rekening_perantara' => $this->rekening_perantara,
            'berlaku_hingga' => $this->berlaku_hingga,
        ];
    }
}
