import 'package:flutter/material.dart';

class DateTimeExample extends StatefulWidget {
  const DateTimeExample({super.key});

  @override
  State<DateTimeExample> createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  @override
  Widget build(BuildContext context) {

    DateTime time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Example 1'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time: $time', style: const TextStyle(fontSize: 15),),
              Text('Current Date: ${time.day}/${time.month}/${time.year}',),
              Text('Current Day: ${time.weekday}',),
              Text('Current Time: ${time.hour}:${time.minute}:${time.second}',),
              ElevatedButton(onPressed: () {
                setState(() {
                  
                });
              }, child: const Text('Current Time'))
            ],
          ),
        ),
      ),
    );
  }
}