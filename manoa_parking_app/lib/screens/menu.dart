import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'map.dart';
import 'campus_visitor.dart';
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
        title: const Text("Menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(context, Map());
              },
              child: const Text('Map of All Zones'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(context, CampusVisitor());
              },
              child: const Text('Upper Campus Visitor'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _navigateToScreen(context, Contact());
              },
              child: const Text('Contact Us'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 3),
    );
  }
}
