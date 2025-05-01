import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded data for now; you can fetch from API later
    const patientName = "John Doe";
    const patientEmail = "johndoe@example.com";
    const bedAssigned = "Bed #12";

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Name: $patientName', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Email: $patientEmail', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Assigned Bed: $bedAssigned', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
