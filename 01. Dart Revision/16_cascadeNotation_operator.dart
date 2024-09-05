// Program for cascade notation

class Person {
  String name = '';
  int age = 0;

  void setDetails(String name, int age){
    this.name = name;
    this.age = age;
  }

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  var person = Person();

  // Using cascade notation to set object properties and call methods

  person
  ..setDetails('Alice', 30)
  ..displayInfo(); // Output: Name: Alice, Age: 30
}
