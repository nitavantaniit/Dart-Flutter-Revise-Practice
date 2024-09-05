// Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Driven)

import 'dart:io';

void main()
{
  while(true)
  {
    print("Menu :");
    print("press 1. Addition");
    print("press 2. Subtraction");
    print("press 3. Multiplication");
    print("press 4. Division");
    print("press 5. Exit");

    stdout.write("Enter your choice (press between 1-5): ");
    int choice = int.parse(stdin.readLineSync()!);

    if(choice >= 1 && choice <= 4)
    {
      stdout.write("Enter First number: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter Second number: ");
      double num2 = double.parse(stdin.readLineSync()!);

      double result;

      switch(choice)
      {
        case 1:
          result =  num1 + num2;
          print("Result: $num1 + $num2 = $result");
          break;
        case 2:
          result =  num1 - num2;
          print("Result: $num1 - $num2 = $result");
          break;
        case 3:
          result =  num1 * num2;
          print("Result: $num1 * $num2 = $result");
          break;
        case 4: 
          if(num2 != 0)
          {
            result = num1 / num2;
            print("Result: $num1 / $num2 = $result");
          }
          else
          {
            print("Error! Division by zero is not allowed");
          }
          break;
      }
    }
    else if(choice == 5)
    {
      print("Exiting the program.");
      break;
    }
    else
    {
      print("Invalid Choice! Enter number between 1 - 5");
    }
  }
}
