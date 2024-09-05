/*
In Dart, Encapsulation means hiding data within a library, preventing it from outside factors. It helps you control your program and prevent it from becoming too complicated.

Encapsulation can be achieved by:
Declaring the class properties as private by using underscore(_).
Providing public getter and setter methods to access and update the value of private property.

Getter methods are used to access the value of private property. 
Setter methods are used to update the value of private property.
 */

// Example

/* 
In this example, we will create a class named Employee. The class will have two private properties _id and _name. We will also create two public methods getId() and getName() to access the private properties. We will also create two public methods setId() and setName() to update the private properties.
*/

class Employee 
{
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() 
  {
    return _id!;
  }
// Getter method to access private property _name
  String getName() 
  {
    return _name!;
  }
// Setter method to update private property _id
  void setId(int id) 
  {
    this._id = id;
  }
// Setter method to update private property _name
  void setName(String name) 
  {
    this._name = name;
  }
  
}

void main() 
{
  // Create an object of Employee class
  Employee emp = new Employee();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}