/*
Multiple Inheritance: In this type of inheritance, a class can inherit from multiple classes. Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.
Hybrid Inheritance: Hybrid inheritance is a combination of multiple types of inheritance within the same hierarchy. It usually involves multiple and multilevel or multiple and hierarchical inheritance structures.

Dart does not support these two inheritance
*/

// Hierarchical: In this type of inheritance, parent class is inherited by multiple subclasses. For example, the Car class can be inherited by the Toyota class and Honda class.

// In this example below, there is class named Shape with two properties diameter1 and diameter2. There is sub class named Rectangle with method area to calculate the area of the rectangle. There is another subclass named Triangle with method area to calculate the area of the triangle.

/*
Syntax:

class Animal {
  // Properties and methods
}

class Dog extends Animal {
  // Inherits from Animal
}

class Cat extends Animal {
  // Inherits from Animal
}

*/

class Shape {
  // Properties
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  // Method to calculate the area of the rectangle
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  // Method to calculate the area of the triangle
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

void main() {
  // Create an object of Rectangle class
  Rectangle r = new Rectangle();
  // setting values to the object
  r.diameter1 = 10.0;
  r.diameter2 = 20.0;
  // Display the area of the rectangle
  print("Area of the rectangle: ${r.area()}");

  // Create an object of Triangle class
  Triangle t = new Triangle();
  // setting values to the object
  t.diameter1 = 10.0;
  t.diameter2 = 20.0;
  // Display the area of the triangle
  print("Area of the triangle: ${t.area()}");
}