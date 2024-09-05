import 'package:custom_theme_example/ui_helper/util.dart';
import 'package:custom_theme_example/widgets/Rounded_btn.dart';
import 'package:flutter/material.dart';


class CustomWidgetExample extends StatefulWidget {
  const CustomWidgetExample({super.key});

  @override
  State<CustomWidgetExample> createState() => _CustomWidgetExampleState();
}

class _CustomWidgetExampleState extends State<CustomWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: 'play', 
                icon: const Icon(Icons.play_arrow,), 
                callback: () {
                print("playing...");
              },
              textStyle: mTextStyle16(),
              ),
            ),
            Container(
              height: 11,
            ),
            SizedBox(
          width: 150,
          height: 50,
          child: RoundedButton(
            btnName: 'Press', 
            callback: () {
            print("Pressed...");
          },
          bgcolor: Colors.orange,
          textStyle: mTextStyle21(),
          ),
        ),
          ],
        ),
      )
      );
  }
}