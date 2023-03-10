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

void main(List<String> args) {
  final fc = FactoryConstDemo(10);
}
