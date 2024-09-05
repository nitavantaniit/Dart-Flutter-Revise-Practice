// Program for nested if

void main()
{
  int num1 = 10;
  int num2 = 15;
  int num3 = 5;

  if(num1 > num2)
  {
    if(num1 > num3)
    {
      print("$num1 is the maximum number");
    }
    else
    {
      print("$num3 is the maximum number");
    }
  }
  else
  {
    if(num2 > num3)
    {
      print("$num2 is maximum number");
    }
    else
    {
      print("$num3 is maximum number");
    }
  }
}