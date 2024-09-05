// Input an array from user such that no element is together and calculate the sum

import 'dart:io';

void main() 
{
  stdout.write("Enter the number of elements in the array: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];

  for (int i = 0; i < n; i++) 
  {
    stdout.write("Enter element ${i + 1}: ");
    int element = int.parse(stdin.readLineSync()!);

    // Check if the current element is the same as the last entered element
    if (i > 0 && element == arr[i - 1]) 
    {
      print("The entered element is the same as the previous one. Please re-enter.");
      i--; // Decrement i to re-enter the current element
      continue; // Skip to the next iteration
    }

    arr.add(element);
  }

  // Calculate the sum of elements in the array
  int sum = arr.reduce((value, element) => value + element);

  print("Entered Array: $arr");
  print("Sum of elements in the array: $sum");
}
