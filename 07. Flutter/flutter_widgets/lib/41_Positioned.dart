import 'package:flutter/material.dart';

class PositonedWidgetExample extends StatelessWidget {
  const PositonedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psitioned Widget'),
      ),
      body: Container(
        width: 300,
        height: 200,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 1,
              left: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}