class SetterDemo {
  int _id;
  String _name;
  SetterDemo(this._id, this._name);

  // getter
  int get getId => _id;
  String get getName => _name;
  // setter
  set setId(int id) {
    this._id = id;
  }

  set setName(String name) => this._name = name;
}

void main(List<String> args) {
  var setterDemo = SetterDemo(10, "James");
  // Setting the value
  setterDemo._id = 20;
  setterDemo._name = "Tim";
  // getting the value
  print(setterDemo._id);
  print(setterDemo._name);
}
