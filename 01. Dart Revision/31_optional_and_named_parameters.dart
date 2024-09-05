// program for Optional and Named Parameters with User Input

import 'dart:io';

void greet({String name = 'Guest'})
{
  print("Hello, $name");
}

void displayDetails(String name, {int age = 30})
{
  print("Name: $name, Age: $age");
}

void main ()
{
  print("Enter Your Name: "); 
  String userName = stdin.readLineSync() ?? '';
  greet(name: userName); // Output: Hello, [entered name]!

  print("Enter Your Name: ");
  String user = stdin.readLineSync() ?? '';
  print("Enter Your Age");
  int userAge = int.parse(stdin.readLineSync() ?? '30');
  displayDetails(user, age: userAge); // Output: Name: [entered name], Age: [entered age]

}