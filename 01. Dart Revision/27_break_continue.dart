// program for break and continue

void main()
{
    for (int i = 0; i < 5; i++)
    {
      if(i == 2)
      {
        continue; // skip iteration if i equals 2
      }
      print("Iteration: $i");
      if(i == 3)
      {
        break; // Exit loop when i equals 3
      }
    }
}