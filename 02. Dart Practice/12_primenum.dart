// Write a Program to check the given number is prime or not prime.

// 10 = 1, 2, 5, 10 = not prime
// 7 = 1, 7 = prime

import 'dart:io';

void main()
{
  List factor = [];

  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= number; i++)
  {
    if(number % 1 == 0)
    {
      factor.add(i);
    }
  }
  if(factor.length > 2)
  {
    print("$number is not a prime number");
  }
  else
  {
    print("$number is a prime number");
  }
}