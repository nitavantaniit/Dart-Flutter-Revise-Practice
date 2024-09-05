import 'package:flutter/material.dart';
import 'package:navigator_examples/Bottom_Navigation_bar/main_bottom.dart';
import 'package:navigator_examples/Navigation_Drawer/homescreen.dart';
import 'package:navigator_examples/Tab_bar_Navigation/tab_bar_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Examples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MainTabBar(),
    );
  }
}