import 'package:flutter/material.dart';

class CircleAvatarExample2 extends StatelessWidget {
  const CircleAvatarExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircleAvatar Example'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.green,
            maxRadius: 50,
          child: Container(
            width: 60,
            height: 60,
            child: Column(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/boy.png')
                ),
                Text('Name')
              ],
            ),
          ),
          ),
      ),
    );
  }
}