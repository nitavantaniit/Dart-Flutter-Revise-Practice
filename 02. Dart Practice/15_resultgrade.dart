/*
Write a program user enter the 5 subjects mark. 
You have to make a total and find the percentage. 
percentage > 75 you have to print “Distinction” 
percentage > 60 and percentage <= 75 you have to print “First class” 
percentage >50 and percentage <= 60  you have to print “Second class” 
percentage > 35 and percentage <= 50 you have to print “Pass class” 
Otherwise print “Fail”
*/

import 'dart:io';

void main()
{
  int TotalMarks = 500;

  stdout.write("Enter marks of subject-1: ");
  int sub1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of subject-2: ");
  int sub2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of subject-3: ");
  int sub3 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of subject-4: ");
  int sub4 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of subject-5: ");
  int sub5 = int.parse(stdin.readLineSync()!);

  int ObtainedMarks = sub1 + sub2 + sub3 + sub4 + sub5;
  double percentage = (ObtainedMarks / TotalMarks) * 100;

  print("Total Marks Obtained: $ObtainedMarks");
  print("Percentage: $percentage");

  if(percentage > 75)
  {
    print("Grade: Distinction");
  }
  else if(percentage > 60 && percentage <= 75)
  {
    print("Grade: First Class");
  }
  else if(percentage > 50 && percentage <= 60)
  {
    print("Grage: Second Class");
  }
  else if(percentage > 35 && percentage <= 50)
  {
    print("Grade: Pass Class");
  }
  else
  {
    print("Fail!!!");
  }

}