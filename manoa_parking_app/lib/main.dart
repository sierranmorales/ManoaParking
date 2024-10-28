import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(ManoaParkingApp());
}

class ManoaParkingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manoa Parking',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true, // Use Material 3 theme if needed
      ),
      home: ParkingHomePage(), // Set this to your custom homepage widget
    );
  }
}
