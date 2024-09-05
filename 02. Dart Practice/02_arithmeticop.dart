// Write a program to make addition, Subtraction, Multiplication and Division of Two Numbers

import 'dart:io';

void main ()
{

  print("Enter numbers to perform Arithmetic Operation");
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  var add = num1 + num2;
  print("Addition between two numbers: $add");

  var sub = num1 - num2;
  print("Difference between two numbers: $sub");

  var mul = num1 * num2;
  print("Multiplication between two numbers: $mul");

  var div = num1 / num2;
  print("Division between two numbers: $div");

  var mod = num1 % num2;
  print("Modulo between two numbers: $mod");
}