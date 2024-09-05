/*
Constructor:
Constructors are a special methods which has same name as class name and does not have any return value and used for initializing objects when they are created.

There are several types of constructors available in Dart.
1. Default Constructor
2. Parameterized Constructor
3. Named Constructor
4. Factory Constructor

1. Default Constructor
The constructor which is automatically created by the dart compiler if you don’t create a constructor is called a default constructor.
A default constructor has no parameters. A default constructor is declared using the class name followed by parentheses ().

In this example below, there is a class Laptop with two properties: brand, and prize. Lets create constructor with no parameter and print something from the constructor. We also have an object of the class Laptop called laptop.
*/

class Laptop {
  String? brand;
  int? prize;

  // Constructor
  Laptop() {
    print("This is a default constructor");
  }
}

void main() {
  // Here laptop is object of class Laptop.
  Laptop laptop = Laptop();
}