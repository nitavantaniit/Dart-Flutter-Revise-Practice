import 'package:flutter/material.dart';

class CustomWidgetExample extends StatelessWidget {
  const CustomWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget Example'),
      ),
      body: Container(
        child: const Column(
          children: [
            CatItems(),
            SubCatItems(),
            Contact(),
            BottomMenu()           
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: ListView.builder(itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(11.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ), itemCount: 10, scrollDirection: Axis.horizontal,
                ),
              ),
            );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              flex: 4,
              child: Container(
                color: Colors.orange,
                child: ListView.builder(itemBuilder: (context, index) => const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text('Name'),
                  subtitle: Text('Mobile Number'),
                  trailing: Icon(Icons.delete),
                ),),
              ),
            );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueGrey,
                child: ListView.builder(itemBuilder: (context, index) => 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                    ),
                  ),
                  ),itemCount: 10, scrollDirection: Axis.horizontal,),
              ),
            );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: GridView.count(crossAxisCount: 4,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue
                      ),
                    ),),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue
                      ),
                    ),)
                ],),
              ),
            );
  }
}