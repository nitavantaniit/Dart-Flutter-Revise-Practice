import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Widget Example"),
      ),
      // body: Center(
      //   child: Text("Hello World !!", style: TextStyle(fontSize: 25),),
      // ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blueGrey,
          child: const Center(child: Text("This is Center of Container !!", style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}