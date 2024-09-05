// Enter R X C matrix from user, enter its elements one by one , check the elements, if found same then print that element otherwise print no elements found

import 'dart:io';

void main() 
{
  // Input the number of rows and columns for the matrix
  stdout.write("Enter the number of rows (R): ");
  int rows = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the number of columns (C): ");
  int columns = int.parse(stdin.readLineSync()!);

  // Initialize a 2D list to store the user matrix
  List<List<int>> userMatrix = [];

  // Input matrix elements row-wise
  for (int i = 0; i < rows; i++) 
  {
    List<int> row = [];

    for (int j = 0; j < columns; j++) 
    {
      // Prompt user for each matrix element
      stdout.write("Enter element at position ($i, $j): ");
      int element = int.parse(stdin.readLineSync()!);
      row.add(element); // Add the element to the current row
    }

    userMatrix.add(row); // Add the row to the matrix
  }

  // Check for repeated elements
  Set<int> seenElements = {}; // Set to store seen elements
  int repeatedElement = -1; // Initialize a variable to store the repeated element
  bool foundRepeatedElement = false; // Flag to track if repeated element is found

  // Traverse the matrix to find repeated elements
  for (List<int> row in userMatrix) 
  {
    for (int element in row) 
    {
      if (seenElements.contains(element)) 
      {
        // If the element is already in the set, mark it as repeated and break
        repeatedElement = element;
        foundRepeatedElement = true;
        break;
      } 
      else 
      {
        seenElements.add(element); // Add unseen elements to the set
      }
    }
    if (foundRepeatedElement) 
    {
      break; // Break the outer loop if repeated element is found
    }
  }

  // Output the result based on whether a repeated element was found or not
  if (foundRepeatedElement) 
  {
    print("Repeated element found: $repeatedElement");
  } 
  else 
  {
    print("No elements found.");
  }
}
