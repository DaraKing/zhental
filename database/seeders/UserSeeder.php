<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user')->insert([
            'first_name' => Str::random(10),
            'last_name' => Str::random(10),
            'password' => Hash::make('password'),
            'user_image' => Str::uuid().'.png',
            'user_email' => Str::random(10).'@gmail.com',
            'role_id' => 1
        ]);
    }
}
