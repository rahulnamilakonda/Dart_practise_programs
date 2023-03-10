class A {
  void printing() => print("Hello world");
}

class B extends A {
  @override
  void printing() => print("method overrided");
}

void main(List<String> args) {
  A a = A();
  A a1 = B(); // Upcast
  a.printing();
  a1.printing();
}
