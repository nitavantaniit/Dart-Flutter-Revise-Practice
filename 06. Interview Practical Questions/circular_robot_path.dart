// Check if a given sequence of moves for a robot is circular or not

/*
Given a sequence of moves for a robot, check if the sequence is circular or not. A sequence of moves is circular if first and last positions of robot are same. A move can be one of the following. 

  G - Go one unit
  L - Turn left
  R - Turn right

Examples: 
Input: path[] = "GLGLGLG"
Output: Given sequence of moves is circular 
Input: path[] = "GLLG"
Output: Given sequence of moves is circular 
*/

import 'dart:io';

// Define an enumeration to represent the cardinal directions
enum Direction { N, E, S, W }

// Function to check if a given path is circular for a robot
bool isCircular(String path) {
  int x = 0;  // Initialize x-coordinate to 0
  int y = 0;  // Initialize y-coordinate to 0
  Direction dir = Direction.N;  // Initialize direction as North

  // Iterate through each move in the given path
  for (int i = 0; i < path.length; i++) {
    String move = path[i];  // Get current move from the path

    // If move is 'R' (right), change direction clockwise by 90 degrees
    if (move == 'R') {
      dir = Direction.values[(dir.index + 1) % 4];
    }
    // If move is 'L' (left), change direction anti-clockwise by 90 degrees
    else if (move == 'L') {
      dir = Direction.values[(4 + dir.index - 1) % 4];
    }
    // If move is 'G' (go), update the position based on current direction
    else {
      if (dir == Direction.N) {  // Move north
        y++;
      } else if (dir == Direction.E) {  // Move east
        x++;
      } else if (dir == Direction.S) {  // Move south
        y--;
      } else {  // Move west
        x--;
      }
    }
  }

  // Check if the robot returns to the starting position (0, 0)
  return (x == 0 && y == 0);
}

void main() {
  stdout.write("Enter the sequence of moves (e.g., 'GLGLGLG'): ");
  String path = stdin.readLineSync() ?? "";  // Given sequence of moves

  if (isCircular(path)) {
    print("Given sequence of moves is circular");  // Print result if circular
  } else {
    print("Given sequence of moves is NOT circular");  // Print result if not circular
  }
}
