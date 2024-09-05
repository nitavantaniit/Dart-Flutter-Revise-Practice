/*
Mixins are a way of reusing the code in multiple classes. Mixins are declared using the keyword mixin followed by the mixin name. Three keywords are used while working with mixins: mixin, with, and on. It is possible to use multiple mixins in a class.

Rules For Mixin
1. Mixin can’t be instantiated. You can’t create object of mixin.
2. Use the mixin to share the code between multiple classes.
3. Mixin has no constructor and cannot be extended.
4. It is possible to use multiple mixins in a class.

syntax:

mixin Mixin1{
  // code
}

mixin Mixin2{
  // code
}

class ClassName with Mixin1, Mixin2{
  // code
}

In this example below, there are two mixins named ElectricVariant and PetrolVariant. The ElectricVariant mixin has a method electricVariant() and the PetrolVariant mixin has a method petrolVariant(). The Car class uses both the ElectricVariant and PetrolVariant mixins.
*/

mixin ElectricVariant {
  void electricVariant() {
    print('This is an electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('This is a petrol variant');
  }
}
// with is used to apply the mixin to the class
class Car with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

void main() {
  var car = Car();
  car.electricVariant();
  car.petrolVariant();
}

