import 'package:flutter/material.dart';

class GridViewCountExample extends StatefulWidget {
  const GridViewCountExample({super.key});

  @override
  State<GridViewCountExample> createState() => _GridViewCountExampleState();
}

class _GridViewCountExampleState extends State<GridViewCountExample> {
  @override
  Widget build(BuildContext context) {

    List<Color> arrColors = [
      Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Count Example'),
      ),
      body: GridView.count(crossAxisCount: 4,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container(color: arrColors[0],),
        Container(color: arrColors[1],),
        Container(color: arrColors[2],),
        Container(color: arrColors[3],),
        Container(color: arrColors[4],),
        Container(color: arrColors[5],),
        Container(color: arrColors[6],),
        Container(color: arrColors[7],)
      ],),
    );
  }
}