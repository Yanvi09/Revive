import 'package:flutter/material.dart';
import 'package:revive_app/screens/booking_screen.dart';
import 'package:revive_app/screens/qrscanner_screen.dart';
import 'package:revive_app/screens/profile_screen.dart';
import 'package:revive_app/services/auth_service.dart';
import 'package:revive_app/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _logout(BuildContext context) async {
    await AuthService().logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Revive - Home')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Book Appointment'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const BookingScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.qr_code_scanner),
            title: const Text('Join Live Session'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const QRScannerScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => _logout(context),
          ),
        ],
      ),
    );
  }
}
