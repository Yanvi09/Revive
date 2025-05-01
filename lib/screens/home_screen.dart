import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Revive Dashboard',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Welcome to Revive App!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              // All Option Cards
              _buildOptionCard(
                context,
                title: 'Book Appointment',
                icon: Icons.calendar_today,
                color: Colors.teal,
                onTap: () => Navigator.pushNamed(context, '/booking'),
              ),
              _buildOptionCard(
                context,
                title: 'View Profile',
                icon: Icons.person,
                color: Colors.deepPurple,
                onTap: () => Navigator.pushNamed(context, '/profile'),
              ),
              _buildOptionCard(
                context,
                title: 'View Queue Status',
                icon: Icons.queue,
                color: Colors.orange,
                onTap: () => Navigator.pushNamed(context, '/queue-status'),
              ),
              _buildOptionCard(
                context,
                title: 'Live Bed Status',
                icon: Icons.hotel,
                color: Colors.green,
                onTap: () => Navigator.pushNamed(context, '/bed-status'),
              ),
              _buildOptionCard(
                context,
                title: 'Inventory Status',
                icon: Icons.medication,
                color: Colors.indigo,
                onTap: () => Navigator.pushNamed(context, '/inventory'),
              ),
              _buildOptionCard(
                context,
                title: 'Scan QR for Admission',
                icon: Icons.qr_code_scanner,
                color: Colors.redAccent,
                onTap: () => Navigator.pushNamed(context, '/qrscanner'),
              ),

              const SizedBox(height: 30),

              // Logout Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.logout, size: 24),
                label: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context,
      {required String title,
      required IconData icon,
      required VoidCallback onTap,
      required Color color}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: color.withOpacity(0.1),
                child: Icon(icon, size: 28, color: color),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
