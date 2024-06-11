import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'lib/assets/images/logo.PNG',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Summa Move',
          style: TextStyle(
              color: Colors.green,
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
