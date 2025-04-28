import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class BookingService {
  Future<bool> bookTherapy(String therapy) async {
    final response = await http.post(
      Uri.parse('${dotenv.env['API_URL']}/book'),
      body: {'therapy': therapy},
    );
    return response.statusCode == 200;
  }
}
