import 'dart:convert';
import 'package:api_training/models/posts_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {

  List<PostsModel> PostList = [];

  Future<List<PostsModel>> getPostApi () async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200) {
      PostList.clear();
      for(Map i in data) {
        PostList.add(PostsModel.fromJson(i as Map<String, dynamic>));
      }
      return PostList;
    } else {
      return PostList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Example 1'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, snapshot){
                if(!snapshot.hasData) {
                  return const Text('Loading..');
                } else {
                  return ListView.builder(
                    itemCount: PostList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Title', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              Text(PostList[index].title.toString()),
                              const SizedBox(height: 5,),
                              const Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              Text(PostList[index].body.toString()),
                              const SizedBox(height: 5,)
                            ],
                          ),
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