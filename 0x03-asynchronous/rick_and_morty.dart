import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';
    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        for (final character in data['results']) {
          print(character['name']);
        }
        url = data['info']['next'] ?? '';
      } else {
        throw Exception('Failed to load characters');
      }
    }
  } catch (e) {
    print('error caught: $e');
  }
}