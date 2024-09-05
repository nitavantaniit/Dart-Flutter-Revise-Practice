// Write a program to find the simple Interest.

import 'dart:io';

void main()
{
  print("Enter Principle amount: ");
  double principle = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest :");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter Time you want to keep (in Years): ");
  double time = double.parse(stdin.readLineSync()!);

  double SimpleInterest = (principle * rate * time)/100;

  print("Simple Interest: $SimpleInterest"); 
}