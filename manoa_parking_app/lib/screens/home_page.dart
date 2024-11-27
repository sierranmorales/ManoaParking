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
      'pricingDetails': '\$5 KIOSK FLAT RATE\n(excluding event parking)',
      'hours': 'HOURS: 5am-midnight',
      'additionalInfo': 'Pay at pay station. Credit card only. Cash not accepted.',
      'restrictions': [
        'Daily re-entry allowed',
        'Valid on Upper Campus after 4pm',
        'Non-refundable',
        'Non-transferable',
        'No overnight',
      ],
    },
    {
      'zoneTitle': 'Zone 22',
      'status': 'Available',
      'permitRequired': false,
      'mapImage': 'assets/images/zone_22_map.png',
      'pricingDetails': '\$5 KIOSK FLAT RATE\n(excluding event parking)',
      'hours': 'HOURS: 6am-midnight',
      'additionalInfo': 'Pay at pay station. Credit card only. Cash not accepted.',
      'restrictions': [
        'Daily re-entry allowed',
        'Valid on Upper Campus after 4pm',
        'Non-refundable',
        'Non-transferable',
        'No overnight',
      ],
    },
    {
      'zoneTitle': 'Upper Campus Visitor',
      'status': 'Available',
      'permitRequired': false,
      'mapImage': 'assets/images/upper_map.png',
      'pricingDetails': '\$5 KIOSK FLAT RATE\n(excluding event parking)\n\n'
          '\$3 PER HALF HOUR\n(6am – 4pm)\n\$1 PER HOUR\n(4pm – midnight)',
      'hours': '',
      'additionalInfo': '• Pay at pay station. Credit card only. Cash not accepted.\n'
          '• Subject to special event restrictions.\n\n'
          'Note: Zone 22 Student Permits MAY NOT park outside their printed zone until after 4:00 PM',
      'restrictions': [
        'Daily re-entry allowed',
        'Non-refundable',
        'Non-transferable',
        'No overnight',
      ],
    },
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
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[300],
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
                    pricingDetails: zone['pricingDetails'],
                    hours: zone['hours'],
                    additionalInfo: zone['additionalInfo'],
                    restrictions: zone['restrictions'],
                    parentIndex: 0,
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
