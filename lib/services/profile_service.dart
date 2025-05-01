import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProfileService {
  static const String baseUrl = "https://your-api-url.com";

  static Future<Map<String, String>> fetchProfile() async {
    final response = await http.get(
      Uri.parse('$baseUrl/profile'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return {
        'name': data['name'],
        'email': data['email'],
        'bed_assigned': data['bed_assigned'],
      };
    } else {
      throw Exception('Failed to load profile');
    }
  }
}
