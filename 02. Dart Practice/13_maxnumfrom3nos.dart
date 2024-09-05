// Write a program to find the Max number from the given three number using Nested If

import 'dart:io';

void main() 
{
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter first number: ");
  int num3 = int.parse(stdin.readLineSync()!);

  int MaxNum;

  if(num1 > num2)
  {
    if(num1 > num3)
    {
      MaxNum = num1;
    }
    else
    {
      MaxNum = num3;
    }
  }
  else
  {
    if(num2 > num3)
    {
      MaxNum = num2;
    }
    else
    {
      MaxNum = num3;
    }
  }

  print("Maximum number from $num1, $num2, $num3 is $MaxNum");
}
