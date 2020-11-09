<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(PositionTableSeeder::class);
        //$this->call(UnitsTableSeeder::class);
        //$this->call(SupplierTableSeeder::class);
        $this->call(Product_typeTableSeeder::class);
    }
}
