import 'package:flutter/material.dart';

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircleAvatar Example'),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/boy.png'),
          backgroundColor: Colors.green,
          radius: 100,
        ),
      ),
    );
  }
}