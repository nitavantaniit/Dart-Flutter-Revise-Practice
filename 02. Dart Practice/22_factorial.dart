// Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int factorial = 1;

  if(number < 0)
  {
    print("Factorial is not defined for negative numbers.");
  }
  else
  {
    for(int i = 1; i <= number; i++)
    {
      factorial *= i;
    }

    print("Factorial of $number is:  $factorial");
  }
}