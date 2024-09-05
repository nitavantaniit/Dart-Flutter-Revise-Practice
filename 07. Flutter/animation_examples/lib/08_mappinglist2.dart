import 'package:flutter/material.dart';

class MappingList2 extends StatelessWidget {

  var arrData = [
    {
      'name' : 'Raman',
      'mobno': '9876543210',
      'unread' : '2'
    },
    {
      'name' : 'Rahul',
      'mobno': '9898989800',
      'unread' : '1'
    },
    {
      'name' : 'Rajeev',
      'mobno': '9687968754',
      'unread' : '5'
    },
    {
      'name' : 'Raj',
      'mobno': '76556789980',
      'unread' : '3'
    },
    {
      'name' : 'Raman',
      'mobno': '9876543210',
      'unread' : '2'
    },
    {
      'name' : 'Rahul',
      'mobno': '9898989800',
      'unread' : '1'
    },
    {
      'name' : 'Rajeev',
      'mobno': '9687968754',
      'unread' : '5'
    },
    {
      'name' : 'Raj',
      'mobno': '76556789980',
      'unread' : '3'
    }
  ];

  MappingList2({super.key});
  // const MappingList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping List'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) => 
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text(value['name'].toString()),
            subtitle: Text(value['mobno'].toString()),
            trailing: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,
              child: Text(value['unread'].toString())),
          )
          ).toList(),
        ),
      ),
    );
  }
}