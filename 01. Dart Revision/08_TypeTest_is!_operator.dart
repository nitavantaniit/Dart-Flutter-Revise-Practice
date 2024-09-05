// Program for Type Test 'is!' operator

void main()
{
  var value = 'Hello';

  if(value is! int)
  {
    print("Value is not an integer");
  }
  else
  {
    print("Value is an integer");
  }
}