import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> arrNames = ['Ram', 'Hari', 'Shiva', 'Vasudev', 'Krishna', 'Vishnu', 'Raman'];


    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Example'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: const Text('Number'),
          trailing: const Icon(Icons.add),
         );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return const Divider(height: 20, thickness: 1,);
        }, 
      )
    );
  }
}