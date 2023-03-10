void addOne(void Function(dynamic) add) {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numbers.forEach(add);
}

void main(List<String> args) {
  addOne((dynamic value) => print(value + 1));
}
