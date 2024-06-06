<?php

namespace Database\Seeders;
use App\Models\Gebruiker;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GebruikdersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('gebruikers')->insert([
            ['naam' => 'John Doe'],
            ['naam' => 'Jane Smith'],
            ['naam' => 'Alice Johnson'],
            // Add more sample data as needed
        ]);
    }
}
