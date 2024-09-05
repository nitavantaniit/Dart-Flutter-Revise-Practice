import 'package:animation_examples/01_animated_container.dart';
import 'package:animation_examples/02_animated_opacity.dart';
import 'package:animation_examples/03_animated_crossFade.dart';
import 'package:animation_examples/04_List_wheel_scroll.dart';
import 'package:animation_examples/05_ClipRRect.dart';
import 'package:animation_examples/06_gradient_colors.dart';
import 'package:animation_examples/07_mappinglist.dart';
import 'package:animation_examples/08_mappinglist2.dart';
import 'package:animation_examples/09_tween_animation.dart';
import 'package:animation_examples/10_ripple_effect.dart';
import 'package:animation_examples/11_ripple_effect.dart';
import 'package:animation_examples/Hero%20Animation/detail_screen.dart';
import 'package:animation_examples/Hero%20Animation/home_screen.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Examples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomeScreen(),
    );
  }
}