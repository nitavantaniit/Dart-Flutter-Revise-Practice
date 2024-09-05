// Program for Function with Return Value with User Input

import 'dart:io';

int add(int a, int b)
{
  return a + b;
}

void main()
{
  print("Enter two numbers : ");
  int num1 = int.parse(stdin.readLineSync() ?? '0');
  int num2 = int.parse(stdin.readLineSync() ?? '0');

  int result = add(num1, num2);
  print("Result: $result"); // Output: Result: [sum of entered numbers]
}