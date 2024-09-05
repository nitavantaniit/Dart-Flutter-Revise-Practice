import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleFour extends StatefulWidget {
  const ExampleFour({super.key});

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {

  var data;
  Future<void> getUserAPI() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('API Example 4'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserAPI(),
              builder: (context, snapshot){
                
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return const Text('Loading..');
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index){
                      return Card(
                        child: Column(
                          children: [
                            ReusableRow(title: 'Name', value: data[index]['name'].toString()),
                            ReusableRow(title: 'Username', value: data[index]['username'].toString()),
                            ReusableRow(title: 'email', value: data[index]['email'].toString()),
                            ReusableRow(title: 'address', value: data[index]['address']['street'].toString()),
                            ReusableRow(title: 'city', value: data[index]['address']['city'].toString()),
                            ReusableRow(title: 'Lat', value: data[index]['address']['geo']['lat'].toString()),
                            ReusableRow(title: 'Lng', value: data[index]['address']['geo']['lng'].toString()),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value)
        ],
      ),
    );
  }
}