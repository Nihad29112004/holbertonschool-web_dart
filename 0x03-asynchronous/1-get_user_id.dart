import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final String data = await fetchUserData();
  final Map<String, dynamic> user = jsonDecode(data);
  return user['id'];
}