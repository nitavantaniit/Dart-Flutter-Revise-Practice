import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Example 1"),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          )
        ],
      )
    );
  }
}