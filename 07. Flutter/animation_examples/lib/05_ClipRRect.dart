import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect Example'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(41)),
          child: Image.asset('assets/images/bg.jpg', width: 400, height: 200, fit: BoxFit.fill,),
        ),
      ),
    );
  }
}