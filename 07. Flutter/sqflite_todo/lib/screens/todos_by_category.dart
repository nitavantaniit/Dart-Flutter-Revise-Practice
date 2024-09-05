import 'package:flutter/material.dart';
import 'package:sqflite_todo/models/category.dart';
import 'package:sqflite_todo/models/todo.dart';
import 'package:sqflite_todo/services/todo_service.dart';

class TodosByCategory extends StatefulWidget {
  final String category;
  const TodosByCategory({super.key, required this.category});

  @override
  State<TodosByCategory> createState() => _TodosByCategoryState();
}

class _TodosByCategoryState extends State<TodosByCategory> {
  final List<Todo> _todoList = [];
  final TodoService _todoService = TodoService();

  @override
  void initState(){
    super.initState();
    getTodosByCategories();
  }

  getTodosByCategories() async {
    Category category = Category();
    category.name = widget.category;
    var todos = await _todoService.readTodosByCategory(category);



    todos.forEach((todo){
      setState(() {
        var model = Todo();
        model.title = todo['title'];
        model.description = todo['description'];
        model.todoDate = todo['todoDate'];

        _todoList.add(model);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _todoList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                    ),
                    elevation: 8,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(_todoList[index].title)
                        ],
                      ),
                      subtitle: Text(_todoList[index].description),
                      trailing: Text(_todoList[index].todoDate),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}