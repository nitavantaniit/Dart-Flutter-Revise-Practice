import 'package:flutter/material.dart';

class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Raman', 'Ram', 'Shiva', 'Vishnu', 'Hari', 'Krishna', 'Vasudev'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder Example"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            )
          ],
        );
      },
      itemCount: arrNames.length,
      separatorBuilder: (context, index) {
        return const Divider(height: 100, thickness: 4,);
      },
      )
    );
  }
}