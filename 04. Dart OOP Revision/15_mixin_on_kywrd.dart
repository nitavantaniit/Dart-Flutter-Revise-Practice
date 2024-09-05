/*
Sometimes, you want to use a mixin only with a specific class. In this case, you can use the on keyword.

What Is Allowed For Mixin
1. You can add properties and static variables.
2. You can add regular, abstract, and static methods.
3. You can use one or more mixins in a class.

What Is Not Allowed For Mixin
1. You can’t define a constructor.
2. You can’t extend a mixin.
3. You can’t create an object of mixin.

Syntax of On Keytword:

mixin Mixin1 on Class1{
  // code
}

*/
abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var dog = Dog('My Dog', 25);
  dog.run();
}

// Not Possible
// class Bird with Animal { } 