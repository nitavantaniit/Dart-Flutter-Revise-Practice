// Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5)

import 'dart:io';

void main()
{
  stdout.write("Enter Number: ");
  int number = int.parse(stdin.readLineSync()!);

  int lastDigit = number % 10; // Getting the last digit of the number

  while(number >= 10)
  {
    number ~/= 10; // Removing the digits except the first one
  }

  int firstDigit = number; // // The remaining number is the first digit

  int sum = firstDigit + lastDigit; // Calculating the sum of the first and last digits

  print('Summation of first and last digits: $sum');
}