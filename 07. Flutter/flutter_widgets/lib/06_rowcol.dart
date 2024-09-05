import 'package:flutter/material.dart';

class RowColumnex extends StatelessWidget {
  const RowColumnex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column Example 1"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('A', style: TextStyle(fontSize: 25),),
          const Text('B', style: TextStyle(fontSize: 25),),
          const Text('C', style: TextStyle(fontSize: 25),),
          const Text('D', style: TextStyle(fontSize: 25),),
          const Text('E', style: TextStyle(fontSize: 25),),
          ElevatedButton(
            onPressed: () {

            },
            child: const Text("Click!!"),
          )
        ],
      ),
    );
  }
}