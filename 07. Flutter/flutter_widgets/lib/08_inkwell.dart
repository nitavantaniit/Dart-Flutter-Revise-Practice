import 'package:flutter/material.dart';

class inkwell extends StatelessWidget {
  const inkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inkwell Example"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("On Tapped");
          },
          onDoubleTap: () {
            print("On Double Tapped");
          },
          onLongPress: () {
            print("On Long Pressed");
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
            child: Center(
                child: InkWell(
                  onTap: () {
                    print("Text On tapped");
                  },
                  child: const Text(
                    "Click Here !!",
                      style:TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.w700
                        )
                      ),
                )
                  ),
          ),
        ),
      ),
    );
  }
}
