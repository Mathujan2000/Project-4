import 'package:flutter/material.dart';
import '../models/oefeningen.dart';
import '../services/oefeningen_services.dart';
import 'oefening_details.dart';

class OefeningenIndexPage extends StatefulWidget {
  const OefeningenIndexPage({super.key});

  @override
  _OefeningenIndexPageState createState() => _OefeningenIndexPageState();
}

class _OefeningenIndexPageState extends State<OefeningenIndexPage> {
  late Future<List<Oefening>> _getoefingen;

  @override
  void initState() {
    _getoefingen = OefeningenService().getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oefeningen - Index'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: FutureBuilder<List<Oefening>>(
          future: _getoefingen,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error ${snapshot.error}',
                ),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.purple,
                ),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: Text('No data found'),
              );
            }

            return _OefeningIndex(snapshot.data!);
          },
        ),
      ),
    );
  }

  Widget _OefeningIndex(List<Oefening> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OefeningDetailsPage(oefening: data[index]),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data[index].foto),
            ),
            title: Text(data[index].naam),
            subtitle: Text(data[index].beschrijving),
          ),
        );
      },
    );
  }
}
