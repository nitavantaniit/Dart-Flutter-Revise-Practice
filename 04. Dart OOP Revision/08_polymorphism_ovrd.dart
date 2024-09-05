/*
Polymorphism

Polymorphism is a concept in Object Oriented Programming where objects of different classes can be treated as objects of a common superclass. It allows different classes to have different implementations of the same method, enabling flexibility and code reusability, It's like having multiple forms behaviors for an object.

Types:
1. Method Overloading: - x
Method Overloading is a feature in programming languages that allows you define multiple methods with the same name but different Parameters.
It is not Supported in dart

2. Method Overriding:
Override means two methods with the same name but doing different tasks. It means that one method doing different tasks. It means that one of the methods overrides the other.
If there is any method in the superclass and a method with the same name in a subclass, then by executing the method, the method of the corresponding class will be executed. 

Syntax:

class ParentClass{
void functionName(){
  }
}
class ChildClass extends ParentClass{
@override 
void functionName(){
  }
}

 */

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

void main() {
  Animal animal = Animal();
  animal.eat();

  Dog dog = Dog();
  dog.eat();
}