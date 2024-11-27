import 'package:flutter/material.dart';
import 'package:manoa_parking_app/widgets/submenu_navbar.dart';

class ZoneDetails extends StatelessWidget {
  final String zoneTitle;
  final String status;
  final bool permitRequired;
  final String mapImage;

  const ZoneDetails({
    required this.zoneTitle,
    required this.status,
    required this.permitRequired,
    required this.mapImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(zoneTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              zoneTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Status: $status',
              style: TextStyle(
                fontSize: 16,
                color: status == 'Lot Full' ? Colors.red : Colors.green,
              ),
            ),
            if (permitRequired)
              const Text(
                'Permit Required',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            const SizedBox(height: 10),
            Image.asset(mapImage),
            // Add more details as needed
          ],
        ),
      ),
      bottomNavigationBar: const SubmenuNavbar(parentIndex: 0),
    );
  }
}
