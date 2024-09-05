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

  // Print the pattern
  for (int i = 1; i <= number; i++) 
  {
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("$i ");
    }
    print(""); // Move to the next line after each row
  }
}
