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

  for (int i = 1; i <= 5; i++) 
  {
    // Print leading spaces
    for (int space = 5 - i; space > 0; space--) 
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