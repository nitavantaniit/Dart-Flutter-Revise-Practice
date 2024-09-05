// Write a program to make a square and cube of number.

import 'dart:io';

void main()
{
  print("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  double sqrt = number * number;
  double cuberoot = number * number * number;

  print("Square root of that number: $sqrt");
  print("Cuberoot of that number: $cuberoot");
}