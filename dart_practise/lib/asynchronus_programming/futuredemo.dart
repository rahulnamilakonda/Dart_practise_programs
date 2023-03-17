import 'dart:async';

Future<String> messageWithLoop() {
  for (int i = 0; i < 10000; i++) for (int j = 0; j < 10000; j++) {}
  return Future<String>.value("Completed");
}

Future<String> messageWithLoop2() async {
  for (var i = 0; i < 100000; i++) {
    for (var j = 0; j < 100000; j++) {}
  }
  return "jamesbond";
}

void main(List<String> args) async {
  Future<String> val = messageWithLoop();
  val.then((value) => print("${value}"));
  print("Main Ended");
  var val2 = messageWithLoop2();
  val2.then((value) => print("${value}"));
  print("ok await");
}
