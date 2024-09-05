import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadeExample extends StatefulWidget {
  const CrossFadeExample({super.key});

  @override
  State<CrossFadeExample> createState() => _CrossFadeExampleState();
}

class _CrossFadeExampleState extends State<CrossFadeExample> {

  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 4), () {
    //   reload();
    // });
  }

  void reload () {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cross Fade Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: const Duration(seconds: 4),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey[400],
              ),
              secondChild: Image.asset(
                'assets/images/fertilizer.png',
                width: 200,
                height: 200,
              ),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond ,
            ),

            const SizedBox(height: 11,),

            ElevatedButton(onPressed: () {
              reload();
            }, child: const Text('Show'))
          ],
        ),
      ),
    );
  }
}
