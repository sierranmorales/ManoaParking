import 'package:flutter/material.dart';
import '../screens/menu.dart';
import '../screens/home_page.dart';
import '../screens/settings.dart';
import '../screens/more_info.dart';

// Use Navbar when a menu is not parented by another menu (ie accessible from Navbar). If parented, use SubmenuNavbar
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () => (selfIndex != 0 ? _navigateToScreen(context, ParkingHomePage()) : _nothing()),
            child: const Row(
              children: [
                Icon(Icons.home),
                Text('Home'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (selfIndex != 1 ? _navigateToScreen(context, Info()) : _nothing()),
            child: const Row(
              children: [
                Icon(Icons.info),
                Text('Info'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (selfIndex != 2 ? _navigateToScreen(context, Settings()) : _nothing()),
            child: const Row(
              children: [
                Icon(Icons.settings),
                Text('Settings'),
              ],
            ),
          ),
          TextButton(
            onPressed: () => (selfIndex != 3 ? _navigateToScreen(context, Menu()) : _nothing()),
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
