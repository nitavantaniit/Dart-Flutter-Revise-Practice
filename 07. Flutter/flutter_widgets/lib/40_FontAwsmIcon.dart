import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeIconExample extends StatelessWidget {
  const FontAwesomeIconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Awesome Icon'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.amazon, color: Colors.blueGrey, size: 40,),
            SizedBox(width: 11,),
            FaIcon(FontAwesomeIcons.googlePlay, color: Colors.blueGrey, size: 40,),
          ],
        ),
      ),
    );
  }
}