import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/flutter.png'),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/logo.jpg'),
          ),
        ],
      ) ,
    );
  }
}