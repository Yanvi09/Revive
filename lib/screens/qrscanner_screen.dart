import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerScreen extends StatelessWidget {
  const QRScannerScreen({super.key});

  void _onDetect(Barcode barcode, BuildContext context) {
    final String code = barcode.rawValue ?? "---";
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Session Joined: $code')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan QR to Join Session')),
      body: MobileScanner(
        onDetect: (barcode, args) => _onDetect(barcode, context),
      ),
    );
  }
}
