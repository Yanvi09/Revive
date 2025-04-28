import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProfileService {
  Future<Map<String, dynamic>> getProfile() async {
    final response = await http.get(
      Uri.parse('${dotenv.env['API_URL']}/profile'),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return {};
    }
  }
}
