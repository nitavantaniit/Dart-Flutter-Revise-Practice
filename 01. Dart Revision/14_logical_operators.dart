// Program for logical operators

void main()
{
  //Using Logical AND (&&)
  bool isDartFun = true;
  bool isLearning = true;

  bool isEnjoying = isDartFun && isLearning; // Both conditions must be true
  print("Is enjoying Dart Learning ? $isEnjoying"); // Output: Is enjoying Dart Learning ? true

  //Using Logical OR (||)
  bool isBusy = false;
  bool isFree = false;

  bool canRelax = isBusy || isFree; // At least one condition needs to be true
  print("Can Relax now ? $canRelax"); // Output: Can Relax now ? False

  //Using Logical NOT (!)
  bool isHot = false;
  bool isCold = !isHot; // Negating false gives true
  print("Is is Cold ? $isCold"); // Output: Is it cold ? true
}