import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {

  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpacity, duration: const Duration(seconds: 1), curve: Curves.elasticInOut, child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),),

            const SizedBox(height: 11,),

            ElevatedButton(onPressed: () {
              setState(() {
                if(isVisible) {
                  myOpacity = 0.0; //invisible
                  isVisible = false;
                } else {
                  myOpacity = 1.0; //visible
                  isVisible = true;
                }
              });
            }, child: const Text('Close'))
          ],
        ),
      ),
    );
  }
}