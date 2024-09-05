//  Write a program to find the Area of Circle

import 'dart:io';

void main()
{
  print("Enter radius to find area of circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  var cirarea = 3.14 * radius * radius;

  print("Area of Circle is: $cirarea");
}