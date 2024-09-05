import 'package:flutter/material.dart';
import 'package:navigator_examples/Navigation_Drawer/drawer_main.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerExample(),
      appBar: AppBar(
        title: const Text('Favourites'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Icon(Icons.favorite_border, color: Colors.white.withOpacity(0.5), size: 40,),
      ),
    );
  }
}