import 'package:flutter/material.dart';
import 'package:manoa_parking_app/widgets/submenu_navbar.dart';

class ZoneDetails extends StatelessWidget {
  final String zoneTitle;
  final String pricingDetails;
  final String hours;
  final String additionalInfo;
  final List<String> restrictions;
  final String mapImage;
  final int parentIndex;

  const ZoneDetails({
    required this.zoneTitle,
    required this.pricingDetails,
    required this.hours,
    required this.additionalInfo,
    required this.restrictions,
    required this.mapImage,
    required this.parentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          zoneTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF234F32),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Text(
                pricingDetails,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            // Hours Section
            if (hours.isNotEmpty)
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      hours,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (additionalInfo.isNotEmpty)
                      const SizedBox(height: 4),
                    if (additionalInfo.isNotEmpty)
                      Text(
                        additionalInfo,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
            const SizedBox(height: 10),
            //
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: restrictions.map((restriction) {
                  return Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          restriction,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 10),
            // Map Image Section
            Image.asset(
              mapImage,
              fit: BoxFit.cover,
              height: 300,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SubmenuNavbar(parentIndex: parentIndex),
    );
  }
}
