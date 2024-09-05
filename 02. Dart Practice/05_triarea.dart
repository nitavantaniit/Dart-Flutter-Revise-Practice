// Write a program to find the Area of Triangle

import 'dart:io';

void main()
{
  print("Enter base and Height to find area of triangle: ");
  double base = double.parse(stdin.readLineSync()!);
  double height = double.parse(stdin.readLineSync()!);

  var triarea = 0.5 * base * height;

  print("Area of triangle : $triarea");
}