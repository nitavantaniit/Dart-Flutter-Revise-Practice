import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  const TextStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Example"),
      ),
      body: const Text('Hello Flutter Devs !!!', style: TextStyle(
        fontSize: 25,
        color: Colors.lightBlue,
        // fontWeight: FontWeight.w100,
        // fontWeight: FontWeight.w900,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.deepOrangeAccent
      ),),
    );
  }
}