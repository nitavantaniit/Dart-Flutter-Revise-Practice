/*
2. Parameterized Constructor
Parameterized constructor is used to initialize the instance variables of the class.
Parameterized constructor is the constructor that takes parameters. It is used to pass the values to the constructor at the time of object creation.

syntax:

class ClassName {
  // Instance Variables
  int? number;
  String? name;
  // Parameterized Constructor
  ClassName(this.number, this.name);
}

In this example below, there is a class Student with three properties: name, age, and rollNumber. The class has one constructor. The constructor is used to initialize the values of the three properties. We also have an object of the class Student called student.
*/

class Student {
  String? name;
  int? age;
  int? rollNumber;
  // Constructor
  Student(this.name, this.age, this.rollNumber); //parametrized constructor
}
    
void main(){
// Here student is object of class Student. 
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
