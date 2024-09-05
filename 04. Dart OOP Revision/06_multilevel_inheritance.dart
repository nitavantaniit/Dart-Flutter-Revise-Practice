// In this type of inheritance, a class can inherit properties and functions from another class and that class can also inherit properties and functions from another class. In Dart, we can extend a class from another class which is already extended from another class

/*
Syntax:

class Animal {
  // Properties and methods
}

class Mammal extends Animal {
  // Inherits from Animal
}

class Dog extends Mammal {
  // Inherits from Mammal
}

*/

// In this example below, there is super class named Car with two properties name and prize. There is sub class named Tesla which inherits the properties of the super class. The sub class has a method display to display the values of the properties. There is another sub class named Model3 which inherits the properties of the sub class Tesla. The sub class has a property color and a method display to display the values of the properties.



class Car 
{
// Properties
  String? name;
  double? prize;
}

class Tesla extends Car 
{
// Method to display the values of the properties
  void display() 
  {
    print("Name: ${name}");
    print("Prize: ${prize}");
  }
}

class Model3 extends Tesla 
{
// Properties
  String? color;

// Method to display the values of the properties
  void display() 
  {
    super.display();
    print("Color: ${color}");
  }
}

void main() 
{
// Create an object of Model3 class
  Model3 m = new Model3();
// setting values to the object
  m.name = "Tesla Model 3";
  m.prize = 50000.00;
  m.color = "Red";
// Display the values of the object
  m.display();
}