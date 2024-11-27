import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const Center(
        child: Text("To Be Implemented"),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 2),
    );
  }
}
