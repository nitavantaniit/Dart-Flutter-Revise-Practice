/*
pattern:

1
1 2
1 2 3
1 2 3 4
1 2 3 4 5

 */

import 'dart:io';

void main() 
{
  for (int i = 1; i <= 5; i++) 
  {
    for (int j = 1; j <= i; j++) 
    {
      stdout.write("$j ");
    }
    print(""); // Move to the next line after each row
  }
}