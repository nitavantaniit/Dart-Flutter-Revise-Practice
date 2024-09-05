import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Container(
            child: Hero(
              tag: 'background',
              child: Image.asset('assets/images/bg.jpg',),
            ),
          ),
          const SizedBox(height: 11,),
          const Text('This is a detail of the above image', style: TextStyle(fontSize: 25),)
        ],
      ),
    );
  }
}