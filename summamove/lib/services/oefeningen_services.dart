import 'dart:convert';
import '../models/oefeningen.dart';
import 'package:http/http.dart' as http;
import 'base_url_page.dart';

class OefeningenService {
  final String urlOefeningen = '$baseUrl/oefeningen';

  Future<List<Oefening>> getAll() async {
    List<Oefening> oefeningen = [];

    final response = await http.get(Uri.parse(urlOefeningen));
    if (response.statusCode != 200) {
      throw Exception('Overwachte responsecode ${response.statusCode}');
    }

    final Map<String, dynamic> body = jsonDecode(response.body);
    final List<dynamic> data = body['data'];

    for (var item in data) {
      final oefening = Oefening(
        id: item['id'],
        naam: item['naam'],
        beschrijving: item['beschrijving'],
        foto: item['foto'],
      );
      oefeningen.add(oefening);
    }

    return oefeningen;
  }
}
