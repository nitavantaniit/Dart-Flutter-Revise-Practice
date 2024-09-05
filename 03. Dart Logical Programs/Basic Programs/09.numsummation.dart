// Write a program make a summation of given number(E.g. 1523 ans :11)

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;

  while (number > 0) {
    int digit = number % 10; // Extract the last digit of the number
    sum += digit; // Add the digit to the sum
    number = number ~/ 10; // Remove the last digit from the number
  }

  print('Sum of digits: $sum');
}
