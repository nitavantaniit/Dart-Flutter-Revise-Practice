import 'package:flutter/material.dart';

class ContainerDecorationExample extends StatelessWidget {
  const ContainerDecorationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container BoxDecoration Example"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              // borderRadius: BorderRadius.circular(21),
              // borderRadius: BorderRadius.all(Radius.circular(21))
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
              border: Border.all(
                width: 7,
                color: Colors.black
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.grey,
                  spreadRadius: 21
                )
              ],
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}