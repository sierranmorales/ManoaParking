import 'package:flutter/material.dart';
import '../widgets/parking_zone.dart';

class ParkingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manoa Parking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Where to Park',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ParkingZone(
              zoneTitle: 'Zone 20',
              status: 'Lot Full',
              permitRequired: true,
              mapImage: 'assets/images/map_zone_20.png',
            ),
            SizedBox(height: 20),
            ParkingZone(
              zoneTitle: 'Zone 22',
              status: 'Available',
              permitRequired: false,
              mapImage: 'assets/images/map_zone_22.png',
            ),
          ],
        ),
      ),
    );
  }
}
