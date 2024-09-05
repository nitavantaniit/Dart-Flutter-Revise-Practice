import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Example"),
      ),
      body: Transform.rotate(
        angle: 0.10,
        child: Container(
          height: 150,
          width: 300,
          margin: const EdgeInsets.only(left: 20, top: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(11)
          ),
          child: const Text("Hello, I'm in the Container Widget!!!"),
        ),
      ),
    );
  }
}