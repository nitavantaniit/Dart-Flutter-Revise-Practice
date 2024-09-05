/*
Getter and Setter provide explicit read and write access to an object properties. In dart, get and set are the keywords used to create getter and setter. Getter read the value of property and act as accessor. Setter update the value of property and act as mutator.
 */

// Example
/* 
In this example below, there is a class named Student with three private properties _firstName, _lastName and _age. There are two getters fullName and age to get the value of the properties. There are also three setters firstName, lastName and age to update the value of the properties. If age is less than 0, it will throw an error. 
 */

class Student 
{
  // Private Properties
  String? _firstName;
  String? _lastName;
  int? _age;

  // Getter to get full name
  String get fullName => this._firstName! + " " + this._lastName!;

  // Getter to read private property _age
  int get age => this._age!;

  // Setter to update private property _firstName
  set firstName(String firstName) => this._firstName = firstName;

  // Setter to update private property _lastName
  set lastName(String lastName) => this._lastName = lastName;

  // Setter to update private property _age
  set age(int age) 
  {
    if (age < 0) 
    {
      throw new Exception("Age can't be less than 0");
    }
    this._age = age;
  }
}

void main() 
{
  // Create an object of Student class
  Student st = new Student();
  // setting values to the object using setter
  st.firstName = "John";
  st.lastName = "Doe";
  st.age = 20;
  // Display the values of the object
  print("Full Name: ${st.fullName}");
  print("Age: ${st.age}");
}