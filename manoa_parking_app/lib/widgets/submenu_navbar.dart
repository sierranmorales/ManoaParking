import 'package:flutter/material.dart';
import '../screens/menu.dart';
import '../screens/home_page.dart';
import '../screens/settings.dart';
import '../screens/more_info.dart';

// Use Navbar when a menu is not parented by another menu (ie accessible from Navbar). If parented, use SubmenuNavbar
class SubmenuNavbar extends StatelessWidget {
  // Function to navigate to other screens
  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // Function to navigate to other screens
  void _navigateToParent(BuildContext context) {
    Navigator.pop(context);
  }

  /* parentIndex values:
  *   -1 = N/A
  *    0 = Home
  *    1 = Info
  *    2 = Settings
  *    3 = Menu
  *  Purpose of variable is to make sure it does not push a copy of the parent page into Navigator stack instead of just popping
  */
  final int parentIndex;

  const SubmenuNavbar({
    required this.parentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF234F32), // Green background
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => (parentIndex != 0 ? _navigateToScreen(context, ParkingHomePage()) : _navigateToParent(context)),
            icon: const Icon(Icons.home, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (parentIndex != 1 ? _navigateToScreen(context, Info()) : _navigateToParent(context)),
            icon: const Icon(Icons.info, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (parentIndex != 2 ? _navigateToScreen(context, Settings()) : _navigateToParent(context)),
            icon: const Icon(Icons.settings, color: Colors.white), // White icon
          ),
          IconButton(
            onPressed: () => (parentIndex != 3 ? _navigateToScreen(context, Menu()) : _navigateToParent(context)),
            icon: const Icon(Icons.density_small, color: Colors.white), // White icon
          ),
        ],
      ),
    );
  }
}
