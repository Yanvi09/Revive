import 'package:flutter/material.dart';

class BedStatusScreen extends StatelessWidget {
  const BedStatusScreen({super.key});

  final List<Map<String, dynamic>> dummyBeds = const [
    {"Floor: 1","Type: General"},
    {"room_no": 101, "bed_id": "A", "type": "General", "status": "occupied"},
    {"room_no": 101, "bed_id": "B", "type": "General", "status": "available"},
    {"room_no": 101, "bed_id": "C", "type": "General", "status": "maintenance"},
    {"room_no": 101, "bed_id": "D", "type": "General", "status": "cleaning"},
    {"room_no": 101, "bed_id": "E", "type": "General", "status": "occupied"},
    {"room_no": 102, "bed_id": "A", "type": "General", "status": "available"},
    {"room_no": 102, "bed_id": "B", "type": "General", "status": "occupied"},
    {"room_no": 102, "bed_id": "C", "type": "General", "status": "available"},
    {"room_no": 102, "bed_id": "D", "type": "General", "status": "occupied"},
    {"room_no": 102, "bed_id": "E", "type": "General", "status": "maintenance"},
    {"Floor: 2", "Type: ICU"},
    {"room_no": 201, "bed_id": "A", "type": "ICU", "status": "occupied"},
    {"room_no": 201, "bed_id": "B", "type": "ICU", "status": "cleaning"},
    {"room_no": 201, "bed_id": "C", "type": "ICU", "status": "available"},
    {"room_no": 201, "bed_id": "D", "type": "ICU", "status": "occupied"},
    {"room_no": 201, "bed_id": "E", "type": "ICU", "status": "maintenance"},
    {"room_no": 202, "bed_id": "A", "type": "ICU", "status": "occupied"},
    {"room_no": 202, "bed_id": "B", "type": "ICU", "status": "available"},
    {"room_no": 202, "bed_id": "C", "type": "ICU", "status": "occupied"},
    {"room_no": 202, "bed_id": "D", "type": "ICU", "status": "available"},
    {"room_no": 202, "bed_id": "E", "type": "ICU", "status": "cleaning"},

    {"Floor: 3", "Type:  Maternity"},
    {"room_no": 301, "bed_id": "A", "type": "Maternity", "status": "occupied"},
    {"room_no": 301, "bed_id": "B", "type": "Maternity", "status": "available"},
    {"room_no": 301, "bed_id": "C", "type": "Maternity", "status": "maintenance"},
    {"room_no": 301, "bed_id": "D", "type": "Maternity", "status": "cleaning"},
    {"room_no": 301, "bed_id": "E", "type": "Maternity", "status": "occupied"},
    {"room_no": 302, "bed_id": "A", "type": "Maternity", "status": "available"},
    {"room_no": 302, "bed_id": "B", "type": "Maternity", "status": "occupied"},
    {"room_no": 302, "bed_id": "C", "type": "Maternity", "status": "available"},
    {"room_no": 302, "bed_id": "D", "type": "Maternity", "status": "occupied"},
    {"room_no": 302, "bed_id": "E", "type": "Maternity", "status": "maintenance"},

    {"Floor: 4", "Type: Isolation"},
    {"room_no": 401, "bed_id": "A", "type": "Isolation", "status": "cleaning"},
    {"room_no": 401, "bed_id": "B", "type": "Isolation", "status": "occupied"},
    {"room_no": 401, "bed_id": "C", "type": "Isolation", "status": "available"},
    {"room_no": 401, "bed_id": "D", "type": "Isolation", "status": "occupied"},
    {"room_no": 401, "bed_id": "E", "type": "Isolation", "status": "maintenance"},
    {"room_no": 402, "bed_id": "A", "type": "Isolation", "status": "occupied"},
    {"room_no": 402, "bed_id": "B", "type": "Isolation", "status": "available"},
    {"room_no": 402, "bed_id": "C", "type": "Isolation", "status": "occupied"},
    {"room_no": 402, "bed_id": "D", "type": "Isolation", "status": "available"},
    {"room_no": 402, "bed_id": "E", "type": "Isolation", "status": "cleaning"},
    {"Floor: 5", "Type: Emergency"},
    {"room_no": 501, "bed_id": "A", "type": "Emergency", "status": "occupied"},
    {"room_no": 501, "bed_id": "B", "type": "Emergency", "status": "available"},
    {"room_no": 501, "bed_id": "C", "type": "Emergency", "status": "maintenance"},
    {"room_no": 501, "bed_id": "D", "type": "Emergency", "status": "cleaning"},
    {"room_no": 501, "bed_id": "E", "type": "Emergency", "status": "occupied"},
    {"room_no": 502, "bed_id": "A", "type": "Emergency", "status": "available"},
    {"room_no": 502, "bed_id": "B", "type": "Emergency", "status": "occupied"},
    {"room_no": 502, "bed_id": "C", "type": "Emergency", "status": "available"},
    {"room_no": 502, "bed_id": "D", "type": "Emergency", "status": "occupied"},
    {"room_no": 502, "bed_id": "E", "type": "Emergency", "status": "maintenance"},



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bed Status')),
      body: ListView.builder(
        itemCount: dummyBeds.length,
        itemBuilder: (context, index) {
          final bed = dummyBeds[index];
          final int availability = bed['available'] as int;
          return Card(
            child: ListTile(
              title: Text('Bed ID: ${bed['id']}'),
              trailing: Icon(
                Icons.circle,
                color: availability > 0 ? Colors.green : Colors.red,
              ),
              subtitle: Text(availability > 0 ? 'Available' : 'Occupied'),
            ),
          );
        },
      ),
    );
  }
}
