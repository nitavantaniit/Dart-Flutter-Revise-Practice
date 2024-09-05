import 'package:flutter/material.dart';

class RowWidgetCrossAxisAlignment extends StatelessWidget {
  const RowWidgetCrossAxisAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row widget - CrossAxisAlignment"), backgroundColor: Colors.grey[600],),
      body: ListView(
        children: <Widget>[
          const Text("default (CrossAxisAlignment.center)"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          const Text("\nDefault (CrossAxisAlignment.start)"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          const Text("\nCrossAxisAlignment.end"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          const Text("\nCrossAxisAlignment.stretch"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
          const Text("\nCrossAxisAlignment.baseline"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text("Hello", style: TextStyle(fontSize: 50)),
                Text("Hello", style: TextStyle(fontSize: 30)),
                Text("Hello", style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
          const Text("\nCrossAxisAlignment.center & MainAxisAlignment.center"),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.indigo, width: 0.5)),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                boxWidget(),
                boxWidget(),
                boxWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  boxWidget() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue[400],
          border: Border.all(color: Colors.indigo, width: 0.5)),
      child: const Center(
          child:
              Text("Box", style: TextStyle(fontSize: 12, color: Colors.white))),
    );
  }
}