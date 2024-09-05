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

  // Print the reflection of the mirror image of the right-angled triangle pattern
  for (int i = 1; i <= 5; i++) 
  {
    // Print spaces before the asterisks to create the reflection
    for (int space = 1; space < i; space++) 
    {
      stdout.write("  ");
    }

    for (int j = i; j <= 5; j++) 
    {
      stdout.write("* ");
    }
    print(""); // Move to the next line after each row
  }
}