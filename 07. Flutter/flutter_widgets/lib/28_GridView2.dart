import 'package:flutter/material.dart';

class GridViewExtentExample extends StatefulWidget {
  const GridViewExtentExample({super.key});

  @override
  State<GridViewExtentExample> createState() => _GridViewExtentExampleState();
}

class _GridViewExtentExampleState extends State<GridViewExtentExample> {
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
        title: const Text('GridView Extent Example'),
      ),
      body: GridView.extent(maxCrossAxisExtent: 200,
      mainAxisSpacing: 11,
      crossAxisSpacing: 11,
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