import 'package:flutter/material.dart';

class QRScannerService {
  static Future<void> scanQR() async {
    // Replace with your QR scanning logic (e.g., using qr_code_scanner package)
    // This is just a placeholder for simulating QR scan.
    await Future.delayed(const Duration(seconds: 2)); // Simulate scan
    print("QR Code scanned, patient admitted.");
  }
}
