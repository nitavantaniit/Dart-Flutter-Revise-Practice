import 'package:animation_examples/Hero%20Animation/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hero Animation'),
        ),
        body: Container(
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailScreen(),
                    ));
              },
              child: Hero(
                tag: 'background',
                child: Image.asset(
                  'assets/images/bg.jpg',
                  width: 150,
                  height: 100,
                ),
              ),
            ),
          ),
        ));
  }
}
