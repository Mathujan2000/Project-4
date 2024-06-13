import 'package:flutter/material.dart';
import 'package:summamove/components/summamove_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Over ons'),
        backgroundColor: Colors.teal,
      ),
      drawer: SummamoveDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/free-photo/woman-helping-man-gym_23-2149627070.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Over ons!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Welkom bij SummaMove, de plek waar sport, beweging en plezier samenkomen! Wij zijn gepassioneerd over het bevorderen van een gezonde en actieve levensstijl voor iedereen. Of je nu een doorgewinterde atleet bent of net begint met sporten, bij SummaMove vind je activiteiten die perfect bij jou passen.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Onze missie is om mensen van alle leeftijden en niveaus te inspireren en te motiveren om actief te zijn. We bieden een breed scala aan sportactiviteiten, van groepslessen en fitnessprogramma\'s tot individuele trainingen en workshops. Onze professionele en ervaren instructeurs staan klaar om je te begeleiden en te ondersteunen bij het behalen van je persoonlijke doelen.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bij SummaMove geloven we in de kracht van gemeenschap en samen sporten. Daarom organiseren we regelmatig sportevenementen en sociale activiteiten om een sterke, ondersteunende en motiverende omgeving te creÃ«ren. Hier maak je nieuwe vrienden, deel je successen en geniet je samen van de voordelen van een actieve levensstijl.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Kom en ontdek de vele mogelijkheden bij SummaMove. Laat je inspireren, blijf gemotiveerd en beweeg mee met ons!',
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}