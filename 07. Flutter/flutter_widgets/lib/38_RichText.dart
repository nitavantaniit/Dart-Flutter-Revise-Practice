import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text Example'),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16
            ),
            children: <TextSpan> [
              TextSpan(text: 'Hello ', ),
              TextSpan(text: 'World! ', style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )),
              TextSpan(
                text: 'Welcome to '
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'DancingScript'
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}