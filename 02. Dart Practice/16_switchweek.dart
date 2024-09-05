// Write Program use switch statement. Display Monday to Sunday

import 'dart:io';

void main()
{
  stdout.write("Enter a number between 1 to 7: ");
  int dayNumber = int.parse(stdin.readLineSync()!);

  String day;

  switch(dayNumber)
  {
    case 1:
      day = 'Monday';
      break;
    case 2:
      day = 'Tuesday';
      break;
    case 3:
      day = 'Wednesday';
      break;
    case 4:
      day = 'Thursday';
      break;
    case 5:
      day = 'Friday';
      break;
    case 6:
      day = 'Saturday';
      break;
    case 7:
      day = 'Sunday';
      break;
    default:
      day = 'Invalid Day number. Please enter between 1 to 7';
      break;
  }

  print("The corresponding day to $dayNumber is: $day");
}