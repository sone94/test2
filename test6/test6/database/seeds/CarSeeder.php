<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Faker;


class CarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for($i = 0; $i < 10; $i++){
            DB::table('cars')->insert([
                'name' => $faker->word,
                'img_src' => 'https://placeimg.com/400/250/any?' . rand(1, 100),
                'price' => $faker->randomNumber(4),
                'product_year' => $faker->numberBetween(2000,2019),
                'brand_id' => $faker->unique()->numberBetween(1, App\Brand::count()),
                'created_at' => Carbon::now()->format('Y-m-d H:i:s')

            ]);
        }
    }
}
