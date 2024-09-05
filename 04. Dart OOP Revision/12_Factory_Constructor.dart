/*
4. Factory Constructor
A factory constructor gives more flexibility to create an object. Generative constructors only create an instance of the class. But, the factory constructor can return an instance of the class or even subclass. It is also used to return the cached instance of the class.

Syntax:

class ClassName {
  factory ClassName() {
    // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}

In this example below, there is a class named Person with two properties, firstName and lastName, and two constructors, a normal constructor and a factory constructor. The factory constructor creates a Person object from a Map.
*/

class Person {
  String firstName;
  String lastName;

  // constructor
  Person(this.firstName, this.lastName);

  // factory constructor Person.fromMap
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map['firstName'] as String;
    final lastName = map['lastName'] as String;
    return Person(firstName, lastName);
  }
}

void main() {
  // create a person object
  final person = Person('John', 'Doe');

  // create a person object from map
  final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

  // print first and last name
  print("From normal constructor: ${person.firstName} ${person.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");
}