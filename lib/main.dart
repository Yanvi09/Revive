import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/booking_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/qrscanner_screen.dart';
import 'screens/queue_status_screen.dart';
import 'screens/bed_status_screen.dart';
import 'screens/inventory_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revive App',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/booking': (context) => const BookingScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/qrscanner': (context) => const QRScannerScreen(),
        '/queue-status': (context) => const QueueStatusScreen(),
        '/bed-status': (context) => const BedStatusScreen(),
        '/inventory': (context) => const InventoryScreen(),
      },
    );
  }
}
