import 'package:flutter/material.dart';

class scrollview extends StatelessWidget {
  const scrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScrollView Example"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.amber,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}