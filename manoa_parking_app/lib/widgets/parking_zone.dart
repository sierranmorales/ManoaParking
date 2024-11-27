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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF234F32), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
        children: [
          // Zone Title
          Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFF234F32), // Green header
            child: Text(
              zoneTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center align text
              children: [
                // Status Text
                Text(
                  'Status: $status',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: status == 'Lot Full' ? Colors.red : Colors.green,
                  ),
                ),
                // Permit Text
                Text(
                  permitRequired ? 'Permit Required' : 'No Permit Required',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF234F32),
                  ),
                ),
                const SizedBox(height: 10),
                // Map Image
                Image.asset(
                  mapImage,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                const SizedBox(height: 10),
                // "More Info" Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF234F32), // Green button
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
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
                  child: const Text(
                    'More Info',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
