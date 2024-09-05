import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {

  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(11),
    color: Colors.blueGrey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.slowMiddle,
              decoration: myDecor,
              duration: const Duration(seconds: 2),
            ),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              setState(() {
                if(flag) {
                  _width = 100.0;
                  _height = 200.0;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange
                  );
                  flag = false;
                } else {
                  _width = 200.0;
                  _height = 100.0;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blueGrey
                  );
                  flag = true;
                }
                
              });
            }, child: const Text('Animate'))
          ],
        ),
      ),
    );
  }
}