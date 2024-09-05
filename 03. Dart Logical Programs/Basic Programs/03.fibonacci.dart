// Write a program you have to print the Fibonacci series up to user given number
// 10 = 0,1,1,2,3,5,8,13,21,34

import 'dart:io';

void main() 
{
  stdout.write("Enter the number of terms for Fibonacci series: ");
  int limit = int.parse(stdin.readLineSync()!);

  int first = 0, second = 1, next;

  print("Fibonacci Series:");

  for (int i = 0; i < limit; i++) 
  {
    if (i <= 1) 
    {
      next = i;
    } 
    else 
    {
      next = first + second;
      first = second;
      second = next;
    }
    print(next);
  }
}