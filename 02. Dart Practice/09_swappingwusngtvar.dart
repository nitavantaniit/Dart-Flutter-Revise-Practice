// Write a Program to show swap of two No's without using third variable

import 'dart:io';

void main()
{
  print("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("\nBefore Swapping");
  print("First Number: $num1");
  print("Second Number: $num2");

  //Swapping without using third variable
  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print("\nAfter Swapping");
  print("First Number: $num1");
  print("Second Number: $num2");
}