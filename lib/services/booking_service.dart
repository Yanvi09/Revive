import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BookingService {
  static const String baseUrl = "https://your-api-url.com";

  static Future<bool> bookAppointment(String department, String timeSlot) async {
    final response = await http.post(
      Uri.parse('$baseUrl/appointments'),
      body: {
        'department': department,
        'time_slot': timeSlot,
      },
    );

    if (response.statusCode == 200) {
      // Handle successful appointment booking
      return true;
    } else {
      return false;
    }
  }
}
