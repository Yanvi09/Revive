import 'package:flutter/material.dart';
// For real scan use: import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerScreen extends StatelessWidget {
  const QRScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan QR')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.qr_code_scanner, size: 150, color: Colors.teal),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('QR Scanned! Patient admitted.')),
                );
              },
              child: const Text('Simulate Scan'),
            ),
          ],
        ),
      ),
    );
  }
}
