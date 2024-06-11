// lib/main.dart
import 'package:flutter/material.dart';
import 'package:summamove/pages/oefeningen_page_index.dart';
import 'package:summamove/pages/home_page.dart';
import 'package:summamove/pages/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              OefeningenIndexPage(),
              AboutPage()
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.fitness_center_outlined), text: 'Oefeningen'),
              Tab(icon: Icon(Icons.people), text: "About us")
            ],
          ),
        ),
      ),
    );
  }
}
