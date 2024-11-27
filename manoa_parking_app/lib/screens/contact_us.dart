import 'package:flutter/material.dart';
import '../widgets/submenu_navbar.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact",
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF234F32), // Green background
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white, // Makes the back arrow white
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Commuter Services Section
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[300], // Light gray background
              child: const Text(
                'Commuter Services',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF234F32), // Match green theme
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Queen Lili‘uokalani Center for Student Services (QLC)\n'
                    '2600 Campus Rd. Rm 014\n'
                    '(ground level)\n'
                    'Honolulu, Hawai‘i 96822',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            // Contact Us Section
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[300], // Light gray background
              child: const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF234F32),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Telephone: (808) 956-8899',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Fax: (808) 956-9811',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: parking@hawaii.edu',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SubmenuNavbar(parentIndex: 3),
    );
  }
}
