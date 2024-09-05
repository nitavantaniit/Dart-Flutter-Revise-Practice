import 'package:flutter/material.dart';

class DateTimePickerExample extends StatefulWidget {
  const DateTimePickerExample({super.key});

  @override
  State<DateTimePickerExample> createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select Date', style: TextStyle(fontSize: 25),),
            Container(height: 11),
            ElevatedButton(onPressed: () async {
              DateTime? DatePicked = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(), 
                firstDate: DateTime(2022), 
                lastDate: DateTime(2025),
              );
              if(DatePicked!=null) {
                print("Date Selected: ${DatePicked.day}-${DatePicked.month}-${DatePicked.year}");
              }
            }, child: const Text('Show')),
            Container(height: 11),
            ElevatedButton(onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                context: context, 
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input
              );

              if(pickedTime!=null) {
                print("Time Selected ${pickedTime.hour}:${pickedTime.minute}");
              }
            }, child: const Text('Select Time'))
          ],
        ),
      )
    );
  }
}