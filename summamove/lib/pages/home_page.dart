import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg-DStVrr8B5_I6XOwKF4ld6tB1nriAT6kUg&s'  // Vervang dit door de URL van je afbeelding
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