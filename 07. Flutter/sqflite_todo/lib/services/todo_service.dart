import 'package:sqflite_todo/models/category.dart';
import 'package:sqflite_todo/models/todo.dart';
import 'package:sqflite_todo/repositories/repository.dart';

class TodoService{
  final Repository _repository;

  TodoService() : _repository = Repository();

  // create todos
  saveTodo(Todo todo) async {
    return await _repository.insertData('todos', todo.todoMap());
  }

  // read todos
  readTodos() async {
    return await _repository.readData('todos');
  }

  // read todos by category
  readTodosByCategory(Category category) async {
    return await _repository.readDataByColumnName('todos', 'category', category.name);
  }
}