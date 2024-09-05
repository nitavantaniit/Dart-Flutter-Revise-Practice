import 'package:sqflite/sqflite.dart';
import 'package:sqflite_todo/repositories/database_connection.dart';

class Repository {
  // Initialize database connection
  final DatabaseConnection _databaseConnection;

  Repository() : _databaseConnection = DatabaseConnection();

  static Database? _database;

  // check if database exists or not
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _databaseConnection.setDatabase();
    return _database!;
  }

  // Inserting data to Table
  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  // Read data from Table
  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }

  // Read data from table by ID
  readDataById(table, itemId) async {
    var connection = await database;
    return await connection.query(table, where: 'id=?', whereArgs: [itemId]);
  }

  // Update data from table
  updateData(table, data) async {
    var connection = await database;
    return await connection
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  // Delete data from table
  deleteData(table, itemId) async {
    var connection = await database;
    return await connection.rawDelete("DELETE FROM $table WHERE id = $itemId");
  }

  // Read data from table by Column Name
  readDataByColumnName(table, columnName, columnValue) async {
    var connection = await database;
    return await connection
        .query(table, where: '$columnName=?', whereArgs: [columnValue]);
  }
}
