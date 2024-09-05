// Write a program to print the number in reverse order.

import 'dart:io';

void main() 
{
  stdout.write("Enter number for reverse order: ");
  int number = int.parse(stdin.readLineSync()!);

  int reversedNumber = 0;

  while (number > 0) 
  {
    int remainder = number % 10;  // Get the last digit of the number
    reversedNumber = reversedNumber * 10 + remainder;  // Build the reversed number
    number ~/= 10;  // Remove the last digit from the original number
  }

  print("Number in Reverse order: $reversedNumber");
}