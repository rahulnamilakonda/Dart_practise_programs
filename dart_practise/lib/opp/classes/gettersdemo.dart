class GettersDemo {
  int _id;
  String _name;
  GettersDemo(this._id, this._name);
  // we need to use get keyword to set up getters for
  // variables id and name
  // its recomemded though to use getters only for private
  // members whose value cannot be accessed outside of this
  // package
  int get getid => _id;
}
