import 'package:flutter/material.dart';

class ParkingZone extends StatelessWidget {
  final String zoneTitle;
  final String status;
  final bool permitRequired;
  final String mapImage;

  ParkingZone({
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextButton(
          onPressed: () {
            // Handle "More Info" press
          },
          child: Text('More Info'),
        ),
        SizedBox(height: 8),
        Text(
          'Status: $status',
          style: TextStyle(
            fontSize: 16,
            color: status == 'Lot Full' ? Colors.red : Colors.green,
          ),
        ),
        if (permitRequired)
          Text(
            'Permit Required',
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        SizedBox(height: 10),
        Image.asset(mapImage),
      ],
    );
  }
}
