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
  for (int i = 5; i >= 1; i--) 
  {
    // Print leading spaces
    for (int space = 5 - i; space > 0; space--) 
    {
      stdout.write(" ");
    }

    // Print asterisks followed by a space
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("* ");
    }

    // Move to the next line after each row
    print(""); 
  }
}
