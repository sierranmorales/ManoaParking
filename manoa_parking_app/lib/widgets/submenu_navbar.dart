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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () => (parentIndex != 0 ? _navigateToScreen(context, ParkingHomePage()) : _navigateToParent(context)),
            child: const Row(
              children: [
                Icon(Icons.home),
                Text('Home'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (parentIndex != 1 ? _navigateToScreen(context, Info()) : _navigateToParent(context)),
            child: const Row(
              children: [
                Icon(Icons.info),
                Text('Info'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (parentIndex != 2 ? _navigateToScreen(context, Settings()) : _navigateToParent(context)),
            child: const Row(
              children: [
                Icon(Icons.settings),
                Text('Settings'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (parentIndex != 3 ? _navigateToScreen(context, Menu()) : _navigateToParent(context)),
            child: const Row(
              children: [
                Icon(Icons.density_small),
                Text('Menu'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
