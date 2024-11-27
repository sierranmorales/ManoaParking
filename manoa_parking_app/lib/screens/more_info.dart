import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "More Information",
          style: TextStyle(color: Colors.white), // Title
        ),
        backgroundColor: const Color(0xFF234F32), // Header bar
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Parking Structures on the Mānoa campus often reach full capacity by 10-11am each day and may temporarily close until spaces become available.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "No charge for parking in all zones on Saturdays, Sundays, and State Holidays (except special events).",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Permit requirements are enforced 24/7 in Zones 08, 21, and 22.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Your daily parking permit is tied to your license plate / VIN. You will get a ticket if your LP/VIN is not in our system for the time that you are parked. Park in assigned zone, pay daily fee, and adhere to UHM Parking rules.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Prices subject to change.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 1),
    );
  }
}
