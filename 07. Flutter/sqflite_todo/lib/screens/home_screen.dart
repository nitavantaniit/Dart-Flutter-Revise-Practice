import 'package:flutter/material.dart';
import 'package:sqflite_todo/helpers/drawer_navigation.dart';
import 'package:sqflite_todo/models/todo.dart';
import 'package:sqflite_todo/screens/todo_screen.dart';
import 'package:sqflite_todo/services/todo_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TodoService _todoService = TodoService();

  List<Todo> _todoList = [];

  @override
  initState() {
    super.initState();
    _getAllTodos();
  }

  _getAllTodos() async {
    _todoList = [];
    try {
      var todos = await _todoService.readTodos();

      todos.forEach((todo) {
        setState(() {
          var model = Todo();
          model.id = todo['id'];
          model.title = todo['title'];
          model.description = todo['description'];
          model.category = todo['category'];
          model.todoDate = todo['todoDate'];
          model.isFinished = todo['isFinished'];
          _todoList.add(model);
        });
      });
    } catch (e) {
      // Handle error
      print('Error fetching todos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo sqflite'),
      ),
      drawer: const DrawerNavigation(),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_todoList[index].title),
                  ],
                ),
                subtitle: Text(_todoList[index].category),
                trailing: Text(_todoList[index].todoDate),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const TodoScreen())),
        child: const Icon(Icons.add),
      ),
    );
  }
}