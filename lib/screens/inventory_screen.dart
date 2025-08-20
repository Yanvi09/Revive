import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  final List<Map<String, dynamic>> dummyInventory = const [
    {'item': 'Paracetamol', 'quantity': 50},
    {'item': 'Bandages', 'quantity': 10},
    {'item': 'Antibiotic', 'quantity': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inventory')),
      body: ListView.builder(
        itemCount: dummyInventory.length,
        itemBuilder: (context, index) {
          final item = dummyInventory[index];
          final String name = item['item'] as String;
          final int quantity = item['quantity'] as int;
          return Card(
            child: ListTile(
              title: Text(name),
              subtitle: Text('Quantity: $quantity'),
              trailing: Icon(
                Icons.warning,
                color: quantity < 20 ? Colors.red : Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
