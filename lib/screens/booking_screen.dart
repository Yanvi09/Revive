import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String selectedDepartment = 'Therapy';
  String selectedTime = '10:00 AM';

  void bookAppointment() {
    // Call BookingService.book() here
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Appointment booked successfully!')),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedDepartment,
              items: ['Therapy', 'Counseling', 'Physiotherapy']
                  .map((dept) => DropdownMenuItem(
                        value: dept,
                        child: Text(dept),
                      ))
                  .toList(),
              onChanged: (value) => setState(() {
                selectedDepartment = value!;
              }),
              decoration: const InputDecoration(
                labelText: 'Select Department',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedTime,
              items: ['10:00 AM', '11:00 AM', '12:00 PM']
                  .map((time) => DropdownMenuItem(
                        value: time,
                        child: Text(time),
                      ))
                  .toList(),
              onChanged: (value) => setState(() {
                selectedTime = value!;
              }),
              decoration: const InputDecoration(
                labelText: 'Select Time Slot',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: bookAppointment,
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
