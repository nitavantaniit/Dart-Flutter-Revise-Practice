// Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';

void main()
{
  stdout.write("Enter temperature in celcius: ");
  double celcius = double.parse(stdin.readLineSync()!);

  double farenheit = (celcius * 9/5) + 32;

  print("Temperature in Farenheight is: $farenheit");
}