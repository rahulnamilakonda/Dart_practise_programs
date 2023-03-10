class CustomDemoException implements Exception {
  String? message;
  CustomDemoException();
  CustomDemoException.init(String message) : this.message = message;
  void generateException() =>
      throw CustomDemoException.init("Exception is generated $this");
}

void main(List<String> args) {
  final ce = CustomDemoException();
  try {
    ce.generateException();
  } on CustomDemoException catch (ex) {
    print(ex.message);
  }
}
