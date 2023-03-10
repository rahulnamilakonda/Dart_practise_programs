class Fruit {}

class Apple extends Fruit {}

class Banana extends Fruit {}

abstract class Mammal {
  // Covariant can even be appilled here
  // void eat(covariant Fruit ft);
  void eat(Fruit ft);
}

class Human extends Mammal {
  @override
  void eat(Fruit ft) {
    print("fruit");
  }
}

class Money extends Mammal {
  @override
  void eat(covariant Banana ba) {
    print("banana");
  }
}
