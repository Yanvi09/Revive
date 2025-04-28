import 'package:flutter/material.dart';
import 'package:revive_app/services/booking_service.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<String> therapies = ['Stress Relief', 'Anxiety Management', 'Mindfulness Training'];
  String selectedTherapy = '';

  void bookAppointment(String therapy) async {
    bool success = await BookingService().bookTherapy(therapy);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(success ? 'Appointment Booked!' : 'Failed to Book')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Appointment')),
      body: ListView.builder(
        itemCount: therapies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(therapies[index]),
            trailing: ElevatedButton(
              onPressed: () => bookAppointment(therapies[index]),
              child: const Text('Book'),
            ),
          );
        },
      ),
    );
  }
}
