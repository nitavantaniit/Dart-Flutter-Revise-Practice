import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  var nameFromHome;

  HomeScreen1(this.nameFromHome, {super.key});
  // const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('Welcome, $nameFromHome', style: const TextStyle(fontSize: 30),)
            ],
          ),
        ),
      )
    );
  }
}