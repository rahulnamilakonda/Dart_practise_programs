// const is used for compile time constants
// whereas final is used for runtime constants
// a class with const contructors and final variables
// is called as immutable class

class constDemo {
  final int varOne;
  final int varTwo;
  const constDemo(this.varOne, this.varTwo);
}

void main(List<String> args) {
  // Dont forget to intialize it with const keyword as prefix
  // to the datatype
  // then only it becomes constant object
  constDemo cd = const constDemo(10, 20);
  //or
  final cd1 = const constDemo(10, 20);
}
