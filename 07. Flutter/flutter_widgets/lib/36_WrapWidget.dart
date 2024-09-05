import 'package:flutter/material.dart';

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget Example'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              width: 115,
              height: 115,
              color: Colors.deepOrange,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.brown,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.blueGrey,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.green,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.red,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.deepPurple,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.cyan,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.blue,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.green,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.blueGrey,
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}