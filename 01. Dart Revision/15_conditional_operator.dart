// Program for conditional operator

void main ()
{
  int number = 10;
  // Using the conditional operator to assign a value based on a condition
  String message = number > 0 ? 'positive' : 'non-Positive';
  print('The number is $message'); // Output: The number is Positive

  // Using the conditional operator within a print statement

  print("The number is ${number > 0 ? 'positive' : 'non-positive'}" );
}