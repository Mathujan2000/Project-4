// lib/main.dart
import 'package:flutter/material.dart';
import 'package:summamove/pages/oefeningen_page_index.dart';
import 'package:summamove/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              OefeningenIndexPage(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.fitness_center_outlined), text: 'Oefeningen'),
            ],
          ),
        ),
      ),
    );
  }
}
