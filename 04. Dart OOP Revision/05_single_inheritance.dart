/*
Inheritance is a sharing of behaviour between two classes. It allows you to define a class that extends the functionality of another class. The extend keyword is used for inheriting from parent class.

Types of Inheritance
1. Single Inheritance
2. Multilevel Inheritance
3. Hierarchical Inheritance
4. Multiple Inheritance - X
5. Hybrid Inheritance - X

1. Single Inheritance

In this type of inheritance, a class can inherit properties and functions from only one class. In Dart, we can only extend one class at a time.

Syntax:

class Animal {
  // Properties and methods
}

class Dog extends Animal {
  // Inherits from Animal
}

 */

// In this example below, there is super class named Car with two properties name and prize. There is sub class named Tesla which inherits the properties of the super class. The sub class has a method display to display the values of the properties.

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

void main() 
{
  // Create an object of Tesla class
  Tesla t = new Tesla();
  // setting values to the object
  t.name = "Tesla Model 3";
  t.prize = 50000.00;
  // Display the values of the object
  t.display();
}