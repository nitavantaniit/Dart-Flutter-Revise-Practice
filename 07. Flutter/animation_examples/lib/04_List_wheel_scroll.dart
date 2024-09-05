import 'package:flutter/material.dart';

class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({super.key});

  @override
  State<ListWheelScroll> createState() => _ListWheelScrollState();
}

class _ListWheelScrollState extends State<ListWheelScroll> {

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Wheel Scroll'),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(21)
              ),
              width: double.infinity,
              child: Center(child: Text('$value', style: TextStyle(fontSize: 25, color: Colors.white),)),
            ),
          )).toList(),
        ),
      )
    );
  }
}