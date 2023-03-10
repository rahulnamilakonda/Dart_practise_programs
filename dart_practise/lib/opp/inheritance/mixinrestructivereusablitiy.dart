class Home {}

mixin Walking on Home {
  void walking() => print("walking");
}
mixin Running {
  void running() => print("running");
}

// Can be used only on subtype of home
// and cannot be used on other classses
// as well as on Home
class Floor extends Home with Walking {}
