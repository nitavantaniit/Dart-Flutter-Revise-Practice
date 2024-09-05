import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sized Box Example'),
      ),
      body: Wrap(
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {

              },
              child: const Text('Click!'),
            ),
          ),

          const SizedBox(
            width: 20,
          ),

          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(
              onPressed: () {

              },
              child: const Text('Click!'),
            ),
          ),
        ],
      )
      
      // ConstrainedBox(
      //   constraints: BoxConstraints(
      //     minWidth: 200,
      //     minHeight: 40,
      //     maxHeight: 60,
      //     maxWidth: 300
      //   ),
      //   child: SizedBox.expand(
      //     child: ElevatedButton(
      //       onPressed: () {
        
      //       },
      //       child: Text('Click'),
      //     ),
      //   ),
      // ),
    );
  }
}