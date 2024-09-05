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

  // Print the reverse of the reflection of the mirror image of the right-angled triangle pattern
  for (int i = number; i >= 1; i--) 
  {
    // Print spaces before the asterisks to create the reverse of the reflection
    for (int space = 1; space < i; space++) 
    {
      stdout.write("  ");
    }

    for (int j = i; j <= number; j++) 
    {
      stdout.write("* ");
    }
    print(""); // Move to the next line after each row
  }
}
