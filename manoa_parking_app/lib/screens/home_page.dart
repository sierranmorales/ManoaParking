import 'package:flutter/material.dart';
import '../widgets/parking_zone.dart';
import '../widgets/navbar.dart';

class ParkingHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manoa Parking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: const Text(
                'Where to Park',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const ParkingZone(
              zoneTitle: 'Zone 20',
              status: 'Lot Full',
              permitRequired: true,
              mapImage: 'assets/images/map_zone_20.png',
            ),
            const SizedBox(height: 20),
            const ParkingZone(
              zoneTitle: 'Zone 22',
              status: 'Available',
              permitRequired: false,
              mapImage: 'assets/images/map_zone_22.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 0),
    );
  }
}
