<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Faker;


class UserSeeder extends Seeder
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
            DB::table('users')->insert([
                'name' => $faker->userName,                
                'email' => $faker->userName.'@gmail.com',
                'password' => Hash::make('password'),
                'created_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
        }
    }
}
