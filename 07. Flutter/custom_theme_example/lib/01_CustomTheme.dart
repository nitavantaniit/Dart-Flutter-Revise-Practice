import 'package:custom_theme_example/ui_helper/util.dart';
import 'package:flutter/material.dart';

class CustomThemeExample extends StatelessWidget {
  const CustomThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      body: Column(
        children: [
          Text("Text 1", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.blue),),
          Text("Text 2", style: Theme.of(context).textTheme.titleMedium,),
          Text("Text 3", style: mTextStyle11()),
          Text("Text 4", style: mTextStyle16()),
          Text("Text 5", style: mTextStyle16(textColor: Colors.blueGrey))
        ],
      ),
    );
  }
}