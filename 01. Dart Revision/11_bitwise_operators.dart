// Program to demonstrate bitwise operators

void main()
{
  int a = 10;
  int b = 6;

  //AND
  print("Bitwise AND: ${a & b}");

  //OR
  print("Bitwise OR: ${a | b}");

  //Exclusive OR
  print("Bitwise XOR: ${a ^ b}");

  //NOT
  print("Bitwise NOT for a: ${~a}");

  //Left Shift
  print("Left Shift: ${a << 1}");

  //Right Shift
  print("Right Shift: ${a >> 1}");
}