// In dart there is no special keyword called
// interface we use abstract it self
abstract class Fruit {
  void sweetLevel();
  void sourLevel();
  void size();
}

// implements
class Apple implements Fruit {
  @override
  void size() {
    print("size small");
  }

  @override
  void sourLevel() {
    print("sour Level 40");
  }

  @override
  void sweetLevel() {
    print("sweet level 60");
  }
}
