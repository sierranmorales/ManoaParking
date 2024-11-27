import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class Info extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More Information"),
      ),
      body: const Center(
        child: Text("To Be Implemented"),
      ),
      bottomNavigationBar: const Navbar(selfIndex: 1),
    );
  }
}
