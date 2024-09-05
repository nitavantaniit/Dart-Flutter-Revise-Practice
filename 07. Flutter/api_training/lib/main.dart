import 'package:api_training/04_example_four.dart';
import 'package:api_training/03_example_three.dart';
import 'package:api_training/02_example_two.dart';
import 'package:api_training/01_example_one.dart';
import 'package:api_training/05_signup.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Training',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const ExampleOne(),
    );
  }
}