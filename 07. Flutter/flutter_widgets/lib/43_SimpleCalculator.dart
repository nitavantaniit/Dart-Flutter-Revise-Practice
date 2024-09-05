import 'package:flutter/material.dart';

class SimpleCalculatorExample extends StatefulWidget {
  const SimpleCalculatorExample({super.key});

  @override
  State<SimpleCalculatorExample> createState() => _SimpleCalculatorExampleState();
}

class _SimpleCalculatorExampleState extends State<SimpleCalculatorExample> {

  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Container(
        color: Colors.cyan[100],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                  decoration: InputDecoration(
                    hintText: 'Enter first number',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      // borderSide: BorderSide(
                      //   color: Colors.white
                      // )
                    )
                  ),
                ),
                const SizedBox(height: 11,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Second number',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      // borderSide: BorderSide(
                      //   color: Colors.white
                      // )
                    )
                  ),
                ),
                const SizedBox(height: 11,),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        int no1 = int.parse(no1Controller.text.toString());
                        int no2 = int.parse(no2Controller.text.toString());

                        int sum = no1 + no2;

                        setState(() {
                          result = "$sum";
                        });

                      }, child: const Text('Add')),
                      ElevatedButton(onPressed: () {
                        int no1 = int.parse(no1Controller.text.toString());
                        int no2 = int.parse(no2Controller.text.toString());

                        int subract = no1 - no2;

                        setState(() {
                          result = "$subract";
                        });
                      }, child: const Text('Subtract')),
                      ElevatedButton(onPressed: () {
                        int no1 = int.parse(no1Controller.text.toString());
                        int no2 = int.parse(no2Controller.text.toString());

                        int multiply = no1 * no2;

                        setState(() {
                          result = "$multiply";
                        });
                      }, child: const Text('Multiply')),
                      ElevatedButton(onPressed: () {
                        int no1 = int.parse(no1Controller.text.toString());
                        int no2 = int.parse(no2Controller.text.toString());

                        double divide = no1 / no2;

                        setState(() {
                          result = "$divide";
                          // result = "${divide.toStringAsFixed(2)}"; // Answer reflect with just two digits after point
                        });
                      }, child: const Text('Divide'))
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(21),
                child: Text('Result: $result', style: const TextStyle(fontSize: 25, color: Colors.black),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}