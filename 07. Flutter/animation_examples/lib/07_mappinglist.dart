import 'package:flutter/material.dart';

class MappingListExample extends StatelessWidget {

  var arrData = [
    'Ramesh',
    'Rahul',
    'Rajeev',
    'Raunak',
    'Rajesh',
    'Shiva',
    'Vishnu',
    'Krishna',
    'Vasudev',
    'Brahma',
  ];

  MappingListExample({super.key});

  // const MappingListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping List'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.blue.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(value)),
                ),
              ),
            )
          ).toList(),
        ),
      ),
    );
  }
}