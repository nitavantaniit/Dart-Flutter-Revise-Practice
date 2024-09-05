import 'package:flutter/material.dart';
import 'package:student_marks_age_data/add_data.dart';

class Data {
  String name;
  int age;
  double marks;

  Data(this.name, this.age, this.marks);
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Data> dataList = [];

  void navigateToAddDataScreen() async {
    final result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => const AddDataScreen())
    );

    if (result != null) {
    setState(() {
      dataList.add(result);
    });
  }
  }

  void deleteData(int index){
    setState(() {
      dataList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Name: ${dataList[index].name}\nAge: ${dataList[index].age}\nMarks: ${dataList[index].marks}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                deleteData(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToAddDataScreen();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}