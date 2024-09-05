import 'package:flutter/material.dart';

class CardExample2 extends StatelessWidget {
  const CardExample2({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> arrNames = ['Ram', 'Hari', 'Shiva', 'Vasudev', 'Krishna', 'Vishnu', 'Raman'];


    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Example'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/boy.png'),
              backgroundColor: Colors.green,
            ),
            title: Text(arrNames[index]),
            subtitle: const Text('Number'),
            trailing: const Icon(Icons.add),
           ),
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