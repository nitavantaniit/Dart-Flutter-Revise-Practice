import 'package:flutter/material.dart';

class ConstraintBoxExample extends StatelessWidget {
  const ConstraintBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstraintBox Example'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
        ),
        child: const Text('Hello World Hello World Hello World Hello World Hello World Hello WorldHello World Hello World Hello World ', style: TextStyle(
          fontSize: 21,
          overflow: TextOverflow.fade
        ),),
      ),
    );
  }
}