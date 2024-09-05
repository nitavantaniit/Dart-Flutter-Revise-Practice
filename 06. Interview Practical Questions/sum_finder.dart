// Input 10 numbers from user and after that enter random number and display three numbers which were entered by user from 10 numbers whose sum will be that random number entered by user using Brute force Approach

import 'dart:io';

void main() {
  List<int> numbers = [];
  int randomNum;

  // Input 10 numbers from the user
  for (int i = 0; i < 10; i++) 
  {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync() ?? '0');
    numbers.add(num);
  }

  // Enter a random number
  stdout.write("Enter a random number: ");
  randomNum = int.parse(stdin.readLineSync() ?? '0');

  bool found = false;

  // Brute-force approach to find three numbers whose sum equals the random number
  for (int i = 0; i < numbers.length - 2; i++) 
  {
    for (int j = i + 1; j < numbers.length - 1; j++) 
    {
      for (int k = j + 1; k < numbers.length; k++) 
      {
        if (numbers[i] + numbers[j] + numbers[k] == randomNum) 
        {
          print(
              "The three numbers whose sum is $randomNum: ${numbers[i]}, ${numbers[j]}, ${numbers[k]}");
          found = true;
          break;
        }
      }
      if (found) 
      {
        break;
      }
    }
    if (found) 
    {
      break;
    }
  }

  if (!found) 
  {
    print("No combination of three numbers found with the sum $randomNum");
  }
}
