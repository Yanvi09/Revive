import 'package:flutter/material.dart';
import '../models/user.dart'; // Assuming you have a User model

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${user.name}'), // Example usage of user data
      ),
      body: Center(
        child: Text('Welcome to your Home Screen!'),
      ),
    );
  }
}
