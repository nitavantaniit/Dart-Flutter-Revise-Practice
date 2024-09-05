import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Example"),
      ),
      body: Column(
            children: [
              TextButton(
                child: const Text('Text Button !!'),
                onPressed: () {
                  print('Text Button Tapped');
                },
                onLongPress: () {
                  print("Text Button long pressed !!");
                },
              ),
              ElevatedButton(
                child: const Text('Elevated Button'),
                onPressed: () {
                  print('Elevated Button Tapped!!');
                },
              ),
              OutlinedButton(
                child: const Text('Outlined Button'),
                onPressed: () {
                  print('Outlined Button Tapped!!');
                },
              )
            ],
          ),
      );
  }
}