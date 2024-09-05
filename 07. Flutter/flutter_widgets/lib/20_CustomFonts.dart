import 'package:flutter/material.dart';

class CustomFontExample extends StatelessWidget {
  const CustomFontExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Font Example'),
      ),
      body: const Center(
          child: Text(
        'Hello world!',
        style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 50,
            fontWeight: FontWeight.w500),
      )),
    );
  }
}
