import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeExample2 extends StatefulWidget {
  const DateTimeExample2({super.key});

  @override
  State<DateTimeExample2> createState() => _DateTimeExample2State();
}

class _DateTimeExample2State extends State<DateTimeExample2> {
  @override
  Widget build(BuildContext context) {

    DateTime time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Example 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current date & time: ${DateFormat().format(time)}', style: const TextStyle(fontSize: 20),),
            Text('Current time: ${DateFormat('jms').format(time)}', style: const TextStyle(fontSize: 20),),
            ElevatedButton(onPressed: () {
              setState(() {
                
              });
            }, child: const Text('Current Time'))
          ],
        ),
      ),
    );
  }
}