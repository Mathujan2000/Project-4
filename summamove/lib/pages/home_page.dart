import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'lib/assets/images/logo-1861420_1280.jpg'  // Vervang dit door de URL van je afbeelding
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Summa Move',
          style: TextStyle(
              color: Colors.purple,
              fontSize: 60,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}