// input string from user and reverse the string skipping the first and last letter

import 'dart:io';

void main() 
{
  stdout.write("Enter a string: ");
  String inputString = stdin.readLineSync()!;

  if (inputString.length > 2) 
  {
    String reversedString = inputString.substring(1, inputString.length - 1).split('').reversed.join();
    String finalString = inputString[0] + reversedString + inputString[inputString.length - 1];
    print("Original String: $inputString");
    print("Reversed String (skipping first and last letter): $finalString");
  } 
  else 
  {
    print("String is too short to skip first and last letters!");
  }
}
