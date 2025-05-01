import 'package:flutter/material.dart';

class QueueStatusScreen extends StatelessWidget {
  const QueueStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data
    final queuePosition = 4;
    final estimatedTime = "12 mins";
    final doctorName = "Dr. A. Sharma";

    return Scaffold(
      appBar: AppBar(title: const Text("Queue Status")),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.access_time, size: 48, color: Colors.green),
                const SizedBox(height: 16),
                Text("You are $queuePosition in the queue", style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 8),
                Text("Estimated wait time: $estimatedTime", style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 16),
                Text("Doctor: $doctorName", style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
