/*
pattern :

    1
   21
  321
 4321
54321

*/

import 'dart:io';

void main() 
{
  // Print the pattern
  for (int i = 1; i <= 5; i++) 
  {
    // Print leading spaces
    for (int space = 5 - i; space > 0; space--) 
    {
      stdout.write(" ");
    }

    // Print numbers in descending order
    for (int j = i; j >= 1; j--) 
    {
      stdout.write("$j");
    }

    print(""); // Move to the next line after each row
  }
}