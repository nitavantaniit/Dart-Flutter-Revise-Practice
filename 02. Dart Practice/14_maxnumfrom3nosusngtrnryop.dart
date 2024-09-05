// Write a program to find the Max number from the given three number using Ternary Operator

import 'dart:io';

void main()
{
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter first number: ");
  int num3 = int.parse(stdin.readLineSync()!);

  int MaxNum = (num1 >= num2) ? (num1 >= num3 ? num1 : num3) : (num2 >= num3 ? num2 : num3);

  print("Maximum number from $num1, $num2, $num3 is $MaxNum");
}