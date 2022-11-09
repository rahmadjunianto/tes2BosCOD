<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TransaksiTransferRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nilai_transfer' => 'required|numeric',
            'bank_tujuan' => 'required',
            'rekening_tujuan' => 'required|numeric',
            'atasnama_tujuan' => 'required',
            'bank_pengirim' => 'required',
        ];
    }
}
