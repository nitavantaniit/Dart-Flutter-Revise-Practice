// Write a program you have to count number of spaces between words

import 'dart:io';

void main() {
  
  // without user input
  // String input = "This is a sample string with some spaces";

  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  int spaceCount = 0;

  for (int i = 0; i < input.length; i++) {
    if (input[i] == ' ') {
      spaceCount++;
    }
  }

  print("Number of spaces: $spaceCount");
}
