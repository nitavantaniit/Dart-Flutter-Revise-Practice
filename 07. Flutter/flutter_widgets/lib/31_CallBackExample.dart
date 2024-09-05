import 'package:flutter/material.dart';

class CallBackFunctionExample extends StatefulWidget {
  const CallBackFunctionExample({super.key});

  @override
  State<CallBackFunctionExample> createState() => _CallBackFunctionExampleState();
}

class _CallBackFunctionExampleState extends State<CallBackFunctionExample> {

  callBack() {
    print('Clicked!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CallBack Example'),
      ),
      body: ElevatedButton(
        onPressed: callBack, 
        child: const Text('Click Me!')),
    );
  }
}