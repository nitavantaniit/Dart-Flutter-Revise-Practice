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
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("* ");
    }
    print(""); // Move to the next line after each row
  }
}
