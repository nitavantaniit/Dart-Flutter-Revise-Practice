import 'package:flutter/material.dart';

class StackExample3 extends StatelessWidget {
  const StackExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example-3')
      ),
      body: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
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
      ),
    );
  }
}