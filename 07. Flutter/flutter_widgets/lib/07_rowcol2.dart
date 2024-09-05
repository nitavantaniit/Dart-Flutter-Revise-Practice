import 'package:flutter/material.dart';

class RowColumnex2 extends StatelessWidget {
  const RowColumnex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column Example 2"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('R1', style: TextStyle(fontSize: 25),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text("Button1")),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {}, child: const Text("Button2"))
                  ],
                ),
                const Text('R2', style: TextStyle(fontSize: 25),),
                const Text('R3', style: TextStyle(fontSize: 25),),
                const Text('R4', style: TextStyle(fontSize: 25),),
                const Text('R5', style: TextStyle(fontSize: 25),),
              ],
      
            ),
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