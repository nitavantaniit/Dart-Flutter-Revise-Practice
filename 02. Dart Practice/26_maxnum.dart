// Write a program to find out the max from given number (E.g. No: -1562 Max number is 6)

import 'dart:io';

void main()
{
  stdout.write("Enter number : ");
  String input = stdin.readLineSync()!;

  int maxDigit = -1; // Initialize maxDigit with a value that ensures any digit will be greater

  for(int i = 0; i < input.length; i++)
  {
    int digit = int.parse(input[i]);
    if(digit > maxDigit)
    { 
      maxDigit = digit;
    }
  }

  print("Max number is $maxDigit"); 
}