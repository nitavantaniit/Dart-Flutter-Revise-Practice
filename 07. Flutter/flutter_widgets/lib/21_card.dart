import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Layout Example'),
      ),
      body: const Center(
        child: Card(
          shadowColor: Colors.blue,
          elevation: 12,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hello World!', style: TextStyle(fontSize: 25),),
          ),
        ),
      ),
    );
  }
}