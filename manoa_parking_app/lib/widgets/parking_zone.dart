import 'package:flutter/material.dart';
import 'package:manoa_parking_app/screens/zone_details.dart';

class ParkingZone extends StatelessWidget {

  final String zoneTitle;
  final String status;
  final bool permitRequired;
  final String mapImage;

  const ParkingZone({
    required this.zoneTitle,
    required this.status,
    required this.permitRequired,
    required this.mapImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          zoneTitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            // Navigate to the ParkingZoneDetailScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ZoneDetails(
                  zoneTitle: zoneTitle,
                  status: status,
                  permitRequired: permitRequired,
                  mapImage: mapImage,
                ),
              ),
            );
          },
          child: const Text('More Info'),
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
      ],
    );
  }
}
