import 'package:flutter/material.dart';
import '../models/oefeningen.dart';

class OefeningDetailsPage extends StatelessWidget {
  final Oefening oefening;

  const OefeningDetailsPage({required this.oefening});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(oefening.naam),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.yellow, // Background color set to yellow
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(oefening.foto),
                radius: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Beschrijving:',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              oefening.beschrijving,
              style: TextStyle(fontSize: 24),
            ),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
