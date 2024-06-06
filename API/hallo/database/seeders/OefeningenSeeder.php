<?php

namespace Database\Seeders;

use App\Models\Oefening;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OefeningenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Oefening::create([
            'naam' => 'Squat',
            'beschrijving' => 'een kniebuiging,
             waarbij je je billen naar achteren duwt en je knieën tegelijkertijd niet voorbij je tenen komen.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/04/Squat-oefening-uitleg-1024x1024.png',
          
        ]);

        Oefening::create([
            'naam' => 'Push-up',
            'beschrijving' => 'Strek je armen waardoor je lichaam omhoog komt met maximale kracht van je borstspieren en triceps',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/02/Push-up-oefening-uitleg.png',
        ]);

        Oefening::create([
            'naam' => 'Dip',
            'beschrijving' => 'Strek je armen en laat je benen recht of iets achter je je zweven. Span je buik- en bilspieren aan.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/02/Dips-oefening-uitleg-300x300.png',
        ]);
        Oefening::create([
            'naam' => 'Palnk',
            'beschrijving' => 'een plat stuk uit een boom gezaagd hout, of daar min of meer op gelijkend, met een lengte groter dan de breedte en een breedte groter dan de dikte.',
            'foto' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnmWjo7MN__AO3kdG2M_5pFBUitsq45G2sTw&s',
        ]);
        Oefening::create([
            'naam' => 'Paardentrap',
            'beschrijving' => 'De paardentrap is een eenvoudige oefening die je thuis kunt doen om je billen en hamstrings te trainen.',
            'foto' => 'https://docplayer.nl/docs-images/66/56064493/images/16-0.jpg',
        ]);
        Oefening::create([
            'naam' => 'Mountain climber',
            'beschrijving' => 'Houd je schouders boven je polsen. Breng je schouderbladen naar elkaar toe (geen bolle bovenrug). ',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/03/Mountain-climbers-oefening-uitleg-300x300.png',
        ]);
        Oefening::create([
            'naam' => 'Burpee',
            'beschrijving' => 'Spring met je benen naar voren, in de richting van je handen. Terwijl je dit doet, duw je je bovenlichaam omhoog met je armen.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/02/Burpees-oefening-uitleg-300x300.png',
        ]);
        Oefening::create([
            'naam' => 'Lunge',
            'beschrijving' => 'Zorg ervoor dat je voorste knie altijd in lijn blijft met je voet, nooit er overheen.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/04/Lunges-oefening-uitleg-CalisthenicsWorld-1024x1024.png',
        ]);
        Oefening::create([
            'naam' => 'Wall sit',
            'beschrijving' => 'Met de wall sit train je vooral de bovenbeenspieren: de bilspieren, hamstrings en quadriceps.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/04/Wall-sit-oefening-uitleg-CalisthenicsWorld-1024x1024.png',
        ]);
        Oefening::create([
            'naam' => 'Crunch',
            'beschrijving' => 'Bij een crunch beweeg je alleen je borst zo ver mogelijk richting je knieën en dan zak je weer terug.',
            'foto' => 'https://calisthenicsworld.nl/wp-content/uploads/2022/04/Crunches-oefening-uitleg-CalisthenicsWorld-1024x1024.png',
        ]);
    }
}
