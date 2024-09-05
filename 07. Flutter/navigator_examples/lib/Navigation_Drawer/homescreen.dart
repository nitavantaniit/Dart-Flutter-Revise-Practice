import 'package:flutter/material.dart';
import 'package:navigator_examples/Navigation_Drawer/drawer_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: const NavigationDrawerExample(),
    );
  }
}