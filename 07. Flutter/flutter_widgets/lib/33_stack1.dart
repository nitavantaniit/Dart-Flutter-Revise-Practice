import 'package:flutter/material.dart';

class StackExample1 extends StatelessWidget {
  const StackExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example-1')
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.grey,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}