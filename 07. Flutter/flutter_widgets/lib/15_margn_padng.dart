import 'package:flutter/material.dart';

class MarginPaddingExample extends StatelessWidget {
  const MarginPaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Margin & Padding Example'),
      ),
      body: Container(
        color: Colors.blueAccent[100],
        margin: const EdgeInsets.all(11),
        child: const Padding(
          // padding: const EdgeInsets.all(11),
          padding: EdgeInsets.only(top: 5, left: 9, bottom: 10, right: 21),
          child: Text("Hello World!", style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}