<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class PublisherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $faker = Factory::create('en_EN');
         for ($i = 1; $i <= 6; $i++) {
             DB::table('publishers')->insert ([
                 'name' => $faker->name(),
                 'address' => $faker->address(),
                 'phone' => $faker->phoneNumber(),
                 'email' => $faker -> email(),
                 'image' => 'logo '.$i.'.png'
             ]);
         }

        // DB::table('publishers')->insert([
        //     [
        //         'name' => "Penerbit Haru",
        //         'address' => "Ruko Glaze 1, Jl. Boulevard Raya Gading Serpong No.2, Klp. Dua, Kec. Klp. Dua, Kabupaten Tangerang, Banten 15810",
        //         'phone' => "081553846503",
        //         'email' => Str::random(10).'@gmail.com',
        //         'image' => "logo 3.png",
        //     ],

        //     [
        //         'name' => "Penerbit Gramedia Pustaka",
        //         'address' => "Jl. Palmerah Barat 29-37 10270, RT.1/RW.2, Gelora, Tanah Abang, Central Jakarta City, Jakarta 10270",
        //         'phone' => "02153650110",
        //         'email' => Str::random(10).'@gmail.com',
        //         'image' => "logo 2.png",
        //     ],
        //     [
        //         'name' => "Penerbit Erlangga",
        //         'address' => ", Jl. H. Baping No.100, RT.6/RW.9, Ciracas, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13740",
        //         'phone' => "536778341505",
        //         'email' => Str::random(10).'@gmail.com',
        //         'image' => "logo 4.png",
        //     ]
        // ]);
    }
}
