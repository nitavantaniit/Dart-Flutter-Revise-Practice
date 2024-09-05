// OOP : Object-oriented programming (OOP) is a programming method that uses objects and their interactions to design and program applications

// Class : A Class is a collection of data member and member function with its behaviour

// Object : An object is an instance of class, an actual entity created based on the structure defined by the class.

// Example : 

class Animal 
{
  String? name;         // Nullable property to store the name of the animal
  int? numberOfLegs;    // Nullable property to store the number of legs
  int? lifeSpan;        // Nullable property to store the lifespan

  void display()  // Method to display information about the animal
  {     
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

void main() 
{
  Animal animal = Animal();   // Creating an object of the Animal class

  // Setting values to the properties of the animal object
  animal.name = "Lion";
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;

  animal.display();   // Calling the display method to print the animal's details
}