import 'package:flutter/material.dart';

class IconsExample extends StatelessWidget {
  const IconsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Example'),
      ),
      body: const Center(
        child: Icon(
          Icons.play_circle_outline,
          size: 50,
          color: Colors.orange,
        ),
      ),
    );
  }
}