import 'package:flutter/material.dart';

class GridViewBuilderExample extends StatefulWidget {
  const GridViewBuilderExample({super.key});

  @override
  State<GridViewBuilderExample> createState() => _GridViewBuilderExampleState();
}

class _GridViewBuilderExampleState extends State<GridViewBuilderExample> {
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
        title: const Text('GridView Builder Example'),
      ),
      body: GridView.builder(itemBuilder: (context, index) {
        return Container(color: arrColors[index],);
      }, itemCount: arrColors.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11
      ),),
    );
  }
}