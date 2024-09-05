/*
pattern:

    1
   2 2
  3 3 3
 4 4 4 4
5 5 5 5 5

*/

import 'dart:io';

void main() 
{
  stdout.write("Enter number of rows: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= number; i++) 
  {
    // Print leading spaces
    for (int space = number - i; space > 0; space--) 
    {
      stdout.write(" ");
    }

    // Print numbers in ascending order with repetition
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("$i ");
    }

    print(""); // Move to the next line after each row
  }
}