import 'package:flutter/material.dart';

class RowColumn1 extends StatelessWidget {
  const RowColumn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.only(left: 10,top: 10,right: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 75,
                margin: const EdgeInsets.only(left: 10, right: 10),
                color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 75,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 75,
                              // width: 256,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 400,
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 100,
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 400,
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              const SizedBox(height: 10)

            ],
          ),
        ),
      ),
    );
  }
}