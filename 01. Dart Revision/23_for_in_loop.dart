// Program of 'for..in' loop

void main()
{
  List<int> numbers = [1, 2, 3, 4, 5];
  for(var number in numbers)
  {
    print("Number: $number");
  }
}