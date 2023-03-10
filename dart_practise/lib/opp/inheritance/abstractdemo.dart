// abstract class
abstract class AbstractDemo {
  int a;
  AbstractDemo(this.a);
  void test();
}

// concrete class
class ExtendsAbstractDemo extends AbstractDemo {
  ExtendsAbstractDemo(super.a);

  @override
  void test() => print("Method Overrided and value of a ${this.a}");
}

void main(List<String> args) {
  // Abstract classes cannot have Objects
  AbstractDemo abstractDemo = ExtendsAbstractDemo(10);
  abstractDemo.test();
}
