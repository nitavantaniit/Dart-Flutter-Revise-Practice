import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Raman', 'Ram', 'Shiva', 'Vishnu', 'Hari', 'Krishna', 'Vasudev'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder Example"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(arrNames[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
      },
      itemCount: arrNames.length,
      itemExtent: 100,
      )
    );
  }
}