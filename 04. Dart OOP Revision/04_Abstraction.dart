/* 

Abstraction in Dart, as in many other object-oriented programming languages, refers to the concept of hiding the implementation details and showing only the necessary features of an object or a class to the outside world.

In Dart, you can achieve abstraction through abstract classes and methods. 

An abstract class cannot be instantiated directly; instead, it serves as a blueprint for other classes to inherit from and provides abstract methods that must be implemented by the subclasses.
 */

// Abstract class representing an Animal
abstract class Animal 
{
  void makeSound(); // Abstract method without implementation
  void eat() 
  {
    // Concrete method with implementation
    print('The animal eats.');
  }
}

// Subclass Dog extending Animal
class Dog extends Animal 
{
  @override
  void makeSound() 
  {
    print('The dog barks.');
  }
}

// Subclass Cat extending Animal
class Cat extends Animal 
{
  @override
  void makeSound() 
  {
    print('The cat meows.');
  }
}

void main() 
{
  // You can't create an instance of an abstract class
  // Animal animal = Animal(); // This will throw an error

  // However, you can create instances of concrete subclasses
  Animal dog = Dog();
  Animal cat = Cat();

  // Calling methods on instances
  dog.makeSound(); // Output: The dog barks.
  dog.eat(); // Output: The animal eats.

  cat.makeSound(); // Output: The cat meows.
  cat.eat(); // Output: The animal eats.
}
