import 'package:flutter/material.dart';
import 'package:manoa_parking_app/screens/zone_details.dart';

class ParkingZone extends StatelessWidget {
  final String zoneTitle;
  final String status;
  final bool permitRequired;
  final String mapImage;
  final String pricingDetails;
  final String hours;
  final String additionalInfo;
  final List<String> restrictions;

  const ParkingZone({
    required this.zoneTitle,
    required this.status,
    required this.permitRequired,
    required this.mapImage,
    required this.pricingDetails,
    required this.hours,
    required this.additionalInfo,
    required this.restrictions,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Zone Title
          Container(
            width: double.infinity, // Ensures the title spans the full width
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color(0xFF234F32), // Green header
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), // Match container's top corners
                topRight: Radius.circular(8),
              ),
            ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF234F32),
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
                          pricingDetails: pricingDetails,
                          hours: hours,
                          additionalInfo: additionalInfo,
                          restrictions: restrictions,
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
