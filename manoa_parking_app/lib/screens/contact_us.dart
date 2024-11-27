import 'package:flutter/material.dart';
import '../widgets/submenu_navbar.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Insert Map Here
          ],
        ),
      ),
      bottomNavigationBar: const SubmenuNavbar(parentIndex: 3)
    );
  }
}
