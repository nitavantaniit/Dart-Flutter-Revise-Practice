import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite_todo/models/todo.dart';
import 'package:sqflite_todo/services/category_service.dart';
import 'package:sqflite_todo/services/todo_service.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override 
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoTitleController = TextEditingController();
  final _todoDescriptionController = TextEditingController();
  final _todoDateController = TextEditingController();
  var _selectedValue;
  final _categories = <DropdownMenuItem>[];
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState(){
    super.initState();
    _loadCategories();
  }
  
  _loadCategories() async {
    var categoryService = CategoryService();
    var categories = await categoryService.readCategories();
    categories.forEach((category){
      setState(() {
        _categories.add(DropdownMenuItem(
          value: category['name'],
          child: Text(category['name']),
        ));
      });
    });
  }

  DateTime _dateTime = DateTime.now();

  _selectedTodoDate(BuildContext context) async {
    var pickedDate = await showDatePicker(
      context: context, 
      initialDate: _dateTime, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100)
    );

    if (pickedDate != null) {
      setState(() {
        _dateTime = pickedDate;
        _todoDateController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    }
  }

  _showSuccessSnackBar(message) {
  final snackBar = SnackBar(content: message);
  ScaffoldMessenger.of(_globalKey.currentContext!).showSnackBar(snackBar);
}

  _showErrorSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(_globalKey.currentContext!).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: const Text('Create Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
           children: <Widget>[
            TextFormField(
              controller: _todoTitleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                hintText: 'Write Todo Title'
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _todoDescriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Write Todo Description'
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _todoDateController,
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: 'Pick a Date',
                prefixIcon: InkWell(
                  onTap: () {
                    _selectedTodoDate(context);
                  },
                  child: const Icon(Icons.calendar_today),
                )
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please pick a date';
                }
                return null;
              },
            ),
            DropdownButtonFormField(
              value: _selectedValue,
              items: _categories,
              hint: const Text('Category'),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a category';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (_todoTitleController.text.isEmpty ||
                    _todoDescriptionController.text.isEmpty ||
                    _todoDateController.text.isEmpty ||
                    _selectedValue == null) {
                  _showErrorSnackBar('Please fill in all fields');
                  return;
                }

                var todoObject = Todo();
                todoObject.title = _todoTitleController.text;
                todoObject.description = _todoDescriptionController.text;
                todoObject.isFinished = 0;
                todoObject.category = _selectedValue.toString();
                todoObject.todoDate = _todoDateController.text;

                var todoService = TodoService();
                var result = await todoService.saveTodo(todoObject);

                if (result > 0) {
                  _showSuccessSnackBar(const Text('Created'));
                }

                print(result);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}