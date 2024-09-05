import 'package:flutter/material.dart';

class StackExample2 extends StatelessWidget {
  const StackExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example-2')
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.grey,
          ),
          Positioned(
            left: 21,
            top: 21,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}