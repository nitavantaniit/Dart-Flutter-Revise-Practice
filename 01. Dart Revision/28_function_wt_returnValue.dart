// Program of Function with return value ('void' function) with User Input 

import 'dart:io';

void greet(String name) {
  print('Hello, $name!');
}

void main() {
  print('Enter your name:');
  String userName = stdin.readLineSync() ?? '';
  greet(userName); // Output: Hello, [entered name]!
}
