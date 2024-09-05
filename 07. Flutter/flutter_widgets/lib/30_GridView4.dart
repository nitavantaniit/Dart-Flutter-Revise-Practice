import 'package:flutter/material.dart';

class GridViewBuilderExample2 extends StatefulWidget {
  const GridViewBuilderExample2({super.key});

  @override
  State<GridViewBuilderExample2> createState() => _GridViewBuilderExample2State();
}

class _GridViewBuilderExample2State extends State<GridViewBuilderExample2> {
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
        title: const Text('GridView Builder Example 2'),
      ),
      body: GridView.builder(itemBuilder: (context, index) {
        return Container(color: arrColors[index],);
      }, itemCount: arrColors.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11
        ),),
    );
  }
}