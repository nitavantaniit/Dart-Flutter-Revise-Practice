/*
Display This Information using print
 • Your Name
 • Your Birth date
 • Your Age
 • Your Address
*/

import 'dart:io';

void main()
{
  stdout.write("Enter Your Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Your Birth date: ");
  String birthdate = stdin.readLineSync()!;

  stdout.write("Enter Your Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Your Address: ");
  String address = stdin.readLineSync()!;

  print("Your Name is: $name");
  print("Your Birth date is: $birthdate");
  print("Your Age is: $age");
  print("Your Address is: $address");
}