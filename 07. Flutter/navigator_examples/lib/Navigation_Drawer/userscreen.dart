import 'package:flutter/material.dart';
import 'package:navigator_examples/Navigation_Drawer/drawer_main.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerExample(),
      appBar: AppBar(
        title: const Text('John Doe'),
      ),
      body: Image.asset(
        'assets/images/user.png',
      ),
    );
  }
}