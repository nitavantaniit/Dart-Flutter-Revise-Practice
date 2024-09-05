import 'package:flutter/material.dart';

class ColumnWidgetAlignment extends StatelessWidget {
  const ColumnWidgetAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Widget Alignment"), backgroundColor: Colors.grey[600],),
      body: ListView(
        children: <Widget>[
          const Text("* CrossAxisAlignment",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("start"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("center"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("end"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("stretch"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // MainAxisAlignment
          const Text("\n* MainAxisAlignment",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("start"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("center"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("end"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("spaceAround"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("spaceBetween"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    const Text("spaceEvenly"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.indigo, width: 0.5)),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          boxWidget(),
                          boxWidget(),
                          boxWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  boxWidget() {
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue[400],
          border: Border.all(color: Colors.indigo, width: 0.5)),
      child: const Center(
          child:
              Text("Box", style: TextStyle(fontSize: 12, color: Colors.white))),
    );
  }
}