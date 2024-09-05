// Program for IO Functions (User Input)

import 'dart:io';

void main()
{
  //Output to console
  stdout.write('Enter Your Name:'); //Displaying a message to the user
  String name = stdin.readLineSync()!; //Reading user input as string

  //Displaying useer input
  print('Hello, $name! Welcome to Dart!');
}