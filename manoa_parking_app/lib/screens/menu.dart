import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../screens/zone_details.dart';
import 'contact_us.dart';

class Menu extends StatelessWidget {
  // Function to navigate to other screens
  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF234F32),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Button for Zone 20
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(
                  context,
                  const ZoneDetails(
                    zoneTitle: 'Zone 20',
                    pricingDetails: '\$5 KIOSK FLAT RATE\n(excluding event parking)',
                    hours: 'HOURS: 5am-midnight',
                    additionalInfo: 'Pay at pay station. Credit card only. Cash not accepted.',
                    restrictions: [
                      'Daily re-entry allowed',
                      'Valid on Upper Campus after 4pm',
                      'Non-refundable',
                      'Non-transferable',
                      'No overnight',
                    ],
                    mapImage: 'assets/images/zone_20_map.png',
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF234F32),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Zone 20',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Button for Zone 22
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(
                  context,
                  const ZoneDetails(
                    zoneTitle: 'Zone 22',
                    pricingDetails: '\$5 KIOSK FLAT RATE\n(excluding event parking)',
                    hours: 'HOURS: 6am-midnight',
                    additionalInfo: 'Pay at pay station. Credit card only. Cash not accepted.',
                    restrictions: [
                      'Daily re-entry allowed',
                      'Valid on Upper Campus after 4pm',
                      'Non-refundable',
                      'Non-transferable',
                      'No overnight',
                    ],
                    mapImage: 'assets/images/zone_22_map.png',
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF234F32),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Zone 22',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Button for Upper Campus Visitor
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(
                  context,
                  const ZoneDetails(
                    zoneTitle: 'Upper Campus Visitor',
                    pricingDetails: '\$5 KIOSK FLAT RATE\n(excluding event parking)\n\n'
                        '\$3 PER HALF HOUR\n(6am – 4pm)\n\$1 PER HOUR\n(4pm – midnight)',
                    hours: '',
                    additionalInfo: '• Pay at pay station. Credit card only. Cash not accepted.\n'
                        '• Subject to special event restrictions.\n\n'
                        'Note: Zone 22 Student Permits MAY NOT park outside their printed zone until after 4:00 PM',
                    restrictions: [
                      'Daily re-entry allowed',
                      'Non-refundable',
                      'Non-transferable',
                      'No overnight',
                    ],
                    mapImage: 'assets/images/upper_map.png',
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF234F32),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Upper Campus Visitor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Button for Contact Us
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(context, Contact());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF234F32),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 3),
    );
  }
}
