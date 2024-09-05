// Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by user.

import 'dart:io';

void main()
{
  stdout.write("Enter marks for Subject 1: ");
  int subject1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for Subject 2: ");
  int subject2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for Subject 3: ");
  int subject3 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for Subject 4: ");
  int subject4 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for Subject 5: ");
  int subject5 = int.parse(stdin.readLineSync()!);

  int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
  double percentage = (totalMarks / (5 * 100)) * 100;

  print("Total Marks: $totalMarks");
  print("Percentage: $percentage");
}