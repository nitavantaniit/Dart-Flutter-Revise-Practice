import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Example"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.limeAccent,
          child: const Text("Hello Devops !!!"),
        ),
      )
    );
  }
}