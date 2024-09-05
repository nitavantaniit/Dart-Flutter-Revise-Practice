// Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven)

import 'dart:io';
import 'dart:math';

void main()
{
  int choice;
  do
  {
    print("Menu: ");
    print("1. Calculate area of Triange:");
    print("2. Calculate area of Rectangle:");
    print("3. Calculate area of Circle:");
    print("4. Exit");

    stdout.write("Enter choice between 1 - 4: ");
    choice = int.parse(stdin.readLineSync()!);

    if(choice == 1)
    {
      calculateTriArea();
    }
    else if(choice == 2)
    {
      calculateRectArea();
    }
    else if(choice == 3)
    {
      calculateCirArea();
    }
    else if (choice == 4)
    {
      print("Exiting the program.");
    }
  }
  while (choice != 4); 
}

void calculateTriArea() 
{
  stdout.write('Enter base length of the triangle: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Enter height of the triangle: ');
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;
  print('Area of the triangle: $area square units');
}

void calculateRectArea() 
{
  stdout.write('Enter length of the rectangle: ');
  double length = double.parse(stdin.readLineSync()!);

  stdout.write('Enter width of the rectangle: ');
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;
  print('Area of the rectangle: $area square units');
}

void calculateCirArea() 
{
  stdout.write('Enter radius of the circle: ');
  double radius = double.parse(stdin.readLineSync()!);

  double area = pi * radius * radius;
  print('Area of the circle: $area square units');
}
