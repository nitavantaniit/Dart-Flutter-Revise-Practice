import 'package:flutter/material.dart';
import 'package:switching_screens/01_SwitchingScreens1.dart/homescreen1.dart';

class IntroScreen1 extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();

  IntroScreen1({super.key});
  // const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro Screen'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome', style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 11,
              ),
              TextField(
                controller: namecontroller,
              ),
              const SizedBox(
                height: 11,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen1(namecontroller.text.toString())
                    )
                  );
                },
                child: const Text('Next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}