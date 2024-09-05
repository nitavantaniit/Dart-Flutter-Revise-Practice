/* 

pattern:

    *
   ***
  *****
 *******
*********

*/

import 'dart:io';

void main() 
{
  stdout.write("Enter number of rows: ");
  int number = int.parse(stdin.readLineSync()!);

  // Print a simple equilateral triangle pattern
  for (int i = 1; i <= number; i++) 
  {
    // Print spaces before each row
    for (int space = number - i; space > 0; space--) 
    {
      stdout.write(" ");
    }

    // Print stars for each row
    for (int j = 1; j <= 2 * i - 1; j++) 
    {
      stdout.write("*");
    }

    print(""); // Move to the next line after each row
  }
}