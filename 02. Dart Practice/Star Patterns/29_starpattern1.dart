/* 

pattern:

*
* *
* * *
* * * *
* * * * *

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
      stdout.write("* ");
    }
    print(""); // Move to the next line after each row
  }
}
