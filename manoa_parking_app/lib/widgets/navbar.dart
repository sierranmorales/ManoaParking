import 'package:flutter/material.dart';
import '../screens/menu.dart';
import '../screens/home_page.dart';
import '../screens/settings.dart';
import '../screens/more_info.dart';

class Navbar extends StatelessWidget {
  // Function to navigate to other screens
  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // Empty Function
  void _nothing() {
    // Does nothing
  }

  /* selfIndex values:
  *   -1 = N/A
  *    0 = Home
  *    1 = Info
  *    2 = Settings
  *    3 = Menu
  *  Purpose of variable is to make sure it does not push a clone of the page into Navigator stack
  */
  final int selfIndex;

  const Navbar({
    required this.selfIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF234F32), // Green background
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => (selfIndex != 0 ? _navigateToScreen(context, ParkingHomePage()) : _nothing()),
            icon: const Icon(Icons.home, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (selfIndex != 1 ? _navigateToScreen(context, Info()) : _nothing()),
            icon: const Icon(Icons.info, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (selfIndex != 2 ? _navigateToScreen(context, Settings()) : _nothing()),
            icon: const Icon(Icons.settings, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (selfIndex != 3 ? _navigateToScreen(context, Menu()) : _nothing()),
            icon: const Icon(Icons.density_small, color: Colors.white), // White icon
          ),
        ],
      ),
    );
  }
}
