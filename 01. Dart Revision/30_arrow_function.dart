// program for Arrow Function (Shortened Syntax) with User Input

import 'dart:io';

int multiply (int a, int b) => a * b;

void main ()
{
  print("Enter two numbers: ");
  int num1 = int.parse(stdin.readLineSync() ?? '0');
  int num2 = int.parse(stdin.readLineSync() ?? '0');

  int result = multiply(num1, num2);
  print("Result: $result"); // Output: Result: [product of entered numbers]
}