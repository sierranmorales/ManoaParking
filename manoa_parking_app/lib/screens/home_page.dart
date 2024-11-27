import 'package:flutter/material.dart';
import '../widgets/parking_zone.dart';
import '../widgets/navbar.dart';

class ParkingHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> parkingZones = [
    {
      'zoneTitle': 'Zone 20',
      'status': 'Lot Full',
      'permitRequired': true,
      'mapImage': 'assets/images/zone_20_map.png',
    },
    {
      'zoneTitle': 'Zone 22',
      'status': 'Available',
      'permitRequired': false,
      'mapImage': 'assets/images/zone_20_map.png',
    },
    {
      'zoneTitle': 'Upper Campus Visitor',
      'status': 'Available',
      'permitRequired': false,
      'mapImage': 'assets/images/zone_22_map.png',
    },
    //
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manoa Parking',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF234F32),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[300], // Light gray background for the "Where to Park" section
            width: double.infinity,
            child: const Text(
              'Where to Park',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: parkingZones.length,
              itemBuilder: (context, index) {
                final zone = parkingZones[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  child: ParkingZone(
                    zoneTitle: zone['zoneTitle'],
                    status: zone['status'],
                    permitRequired: zone['permitRequired'],
                    mapImage: zone['mapImage'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(selfIndex: 0),
    );
  }
}
