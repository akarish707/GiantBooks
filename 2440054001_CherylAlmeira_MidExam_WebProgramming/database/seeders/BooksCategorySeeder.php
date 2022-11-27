<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory;

class BooksCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create('en_EN');
        for ($i = 1; $i <= 12; $i++) {
            DB::table('books_categories')->insert ([
                'books_id' => $faker->numberBetween(1, 12),
                'category_id' => $faker->numberBetween(1, 4)
            ]);
        }
        
    }
}
