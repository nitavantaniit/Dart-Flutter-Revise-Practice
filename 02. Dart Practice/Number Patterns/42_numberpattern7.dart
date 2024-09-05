/*
pattern:

1
10
101
1010
10101

*/

import 'dart:io';

void main() 
{
  stdout.write("Enter number of rows: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= number; i++) 
  {
    for (int j = 1; j <= i; j++) 
    {
      stdout.write(j % 2 == 0 ? "0" : "1");
    }
    print(""); // Move to the next line after each row
  }
}
