/* 

pattern:

* * * * *
* * * *
* * *
* *
*

*/

import 'dart:io';

void main() 
{
  stdout.write("Enter number of rows: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = number; i >= 1; i--) 
  {
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("* ");
    }
    print(" "); 
  }
}
