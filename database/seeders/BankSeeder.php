<?php

namespace Database\Seeders;

use App\Models\Bank;
use Illuminate\Database\Seeder;

class BankSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    
    private $banks = [
        ["nama" => "BCA"],
        ["nama" => "BRI"],
        ["nama" => "Mandiri"],
        ["nama" => "BNI"],
        ["nama" => "BTN"],
        ["nama" => "Danamon"],
    ];
    public function run()
    {
        foreach ($this->banks as $value) {
            $category = new Bank;
            $category->nama = $value['nama'];
            $category->save();
        }
    }
}
