<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('role')->insert([
            'role_id' => 1,
            'role_name' => 'Admin',
        ]);

        DB::table('role')->insert([
            'role_id' => 2,
            'role_name' => 'User',
        ]);
    }
}
