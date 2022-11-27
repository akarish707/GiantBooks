<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory;


class BooksSeeder extends Seeder
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
            DB::table('books')->insert ([
                'publisher_id' => $faker->numberBetween(1, 6),
                'title' => $faker->jobTitle(),
                'author' => $faker->name(),
                'year' => $faker->numberBetween(1999, 2022),
                'sinopsis' => $faker->realText(200),
                'image' => 'totoro '.$i.'.jpg'
            ]);
        }
    }
}
