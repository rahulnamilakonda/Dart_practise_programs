class Person {
  String _name;
  int _id;
  // initalising formal
  Person(this._name, this._id);
}

class PersonVerOne {
  // variables must be nullable
  // Here variables first gets initialised then constructor gets invoked
  String? name;
  int? id;
  PersonVerOne(String name, int id) {
    this.name = name;
    this.id = id;
  }
}

// if you want to delay the intialisation of vairables the use late keyword
class PersonVerTwo {
  late int id;
  late String name;
  PersonVerTwo(int id1, String name1) {
    id = id1;
    name = name1;
  }
}

// even body can be implemented for an intialsing formal

class PersonVerThree {
  String name;
  int id;
  PersonVerThree(this.name, this.id) {
    print("Intialsing formal can have a body");
  }
}

// intializer list
// You can use intailzer list when you dont want to expose some of the
// internal properties of the class to the user
class PersonVerFour {
  String name;
  int id;
  // intializer list no brackets only colon
  PersonVerFour(String feature1, int feature2)
      : name = feature1, // comma
        id = feature2;
}

// Named Constructors

class Fraction {
  late int _numerator;
  late int _denominator;
  Fraction(this._numerator, this._denominator);

  // Named Constructors are only used for constructor overridding
  // because dart does not provide constructor overidding feature
  // hence to make use of it we use named constructors
  Fraction.setDenom() : _denominator = 1;
}

// Redirecting Constructors
class FractionVerOne {
  int _numerator;
  int _denominator;
  FractionVerOne(this._numerator, this._denominator);
  // Named Constructors
  // this(value,value,...); is called redirecting constructor
  FractionVerOne.OneHalf() : this(1, 2);

  FractionVerOne.WholeNumber(int value) : this(value, 1);
}
// Factory constructor demo

class FactoryConstDemo {
  static late final int id;
  factory FactoryConstDemo(int id) {
    // it is used to return an object
    return FactoryConstDemo(id);
  }
  // Named Constructor
  // Normal Constructor cannot be used to initalise static values
  // but named Constructor does so
  FactoryConstDemo.intialize(int aId) {
    id = aId;
  }
}
}
