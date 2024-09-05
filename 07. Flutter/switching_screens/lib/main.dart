import 'package:flutter/material.dart';
import 'package:switching_screens/01_SwitchingScreens1.dart/splashscreen1.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switching Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenExample(),
    );
  }
}