/*

A
A B
A B C
A B C D
A B C D E

*/

import 'dart:io';

void main() 
{
  int alphabet = 65; // ASCII value of 'A'

  for (int i = 0; i < 5; i++) 
  {
    for (int j = 0; j <= i; j++) 
    {
      stdout.write('${String.fromCharCode(alphabet + j)} ');
    }
    print(""); // Move to the next line after each row
  }
}
